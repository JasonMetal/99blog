<?php
// +----------------------------------------------------------------------
// | 99PHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2018~2020 https://www.99php.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: Mr.Chung <chung@99php.cn >
// +----------------------------------------------------------------------

namespace app\blog\controller;

// use app\blog\model\article;
use app\blog\controller\Db;
use app\common\controller\BlogController;
class Article extends BlogController {

    /**
     * 模型对象
     */
    protected $model = null;

     /**
     * 初始化
     * User constructor.
     */

    public function __construct() {
        parent::__construct();
        $this->model = model('Article');
    }

    public function details($id = ''){
        if (!$this->request->isPost()) {
            $last= $this->model->where("id", "<", $id)->order('id' ,"desc")->field('id,title')->find();
            $next= $this->model->where("id", ">", $id)->field('id,title')->find();

            //获取产品信息
            // if (empty($id)) return msg_error('暂无产品信息，请稍后再试','admin/article');
            if (empty($id)) $this->error('暂无新闻信息，请稍后再试','/article');
            $details = $this->model->where(['status' => 0, 'id' => $id])->field('title,describe,content,clicks,create_at')->find();
            if (empty($details)) return msg_error('暂无产品信息，请稍后再试','/article');

            //新增产品点击量
            $this->model->where(['id' => $id])->setInc('clicks', 1);
            // dump($details);die();
            $this->assign('details',$details);
            $this->assign('last',$last);
            $this->assign('next',$next);
            return $this->fetch();
        }
    }

    public function index() {
        
        $where['status']=0;
        $limit = 4;

        $basic_data = model('Article')->order(['sort'=>'asc'])->field(['`describe`,clicks,category_id,id,title,cover_img,sort,create_at'])->where($where)->paginate($limit,false,['query'=>request()->param()])->each(function($item,$key){
            $cat_id = $item['category_id'];
            $item['category_name'] = db('Procategory')->where(['id'=>$cat_id])->value('title');
            $pro_id = $item['id'];
            $exit_tag = db('blog_article_tag')->where(['article_id'=>$pro_id])->column('tag_id');
            if(count($exit_tag)>1){
                foreach ($exit_tag as $val) {
                    $tag_title[] = db('blog_tag')->where(['id'=>$val])->value('tag_title');
                }
                $item['tag_title'] = $tag_title;
            }else{
                $item['tag_title'] = '';
            }

        });
        $ifexif_page = $basic_data->render();
        $this->assign('ifexif_page',$ifexif_page);
        $this->assign('article_list',$basic_data);
        return $this->fetch();
      
    }

   
}