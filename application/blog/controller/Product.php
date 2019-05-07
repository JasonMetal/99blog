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

// use app\blog\model\Product;
use app\blog\controller\Db;
use app\common\controller\BlogController;
class Product extends BlogController {

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
        $this->model = model('Product');
    }

    public function detail($id = ''){
        if (!$this->request->isPost()) {
            //获取产品信息
            if (empty($id)) $this->error('暂无产品信息，请稍后再试','/product');
            $details = $this->model->where(['status' => 0, 'is_deleted' => 0, 'id' => $id])->field('title,describe,content')->find();
            if (empty($details)) return msg_error('暂无产品信息，请稍后再试','/product');

            //新增产品点击量
            $this->model->where(['id' => $id])->setInc('clicks', 1);

            $this->assign('details',$details);
            return $this->fetch();
        }
    }

    public function index() {
        
        $order = [
            'sort'      => 'asc',
            'update_at' => 'desc',
        ];
        $limit = 8;
        $basic_data = model('Product')->order($order)->field(['category_id,id,title,cover_img,create_at'])->paginate($limit,false,['query'=>request()->param()])->each(function($item,$key){
        	$cat_id = $item['category_id'];
        	$item['category_name'] = db('Procategory')->where(['id'=>$cat_id])->value('title');
        	$pro_id = $item['id'];
        	$exit_tag = db('blog_product_tag')->where(['Product_id'=>$pro_id])->column('tag_id');
        	if(count($exit_tag)>1){
        		foreach ($exit_tag as $val) {
        			$tag_title[] = db('Product_tag')->where(['id'=>$val])->value('tag_title');
        		}
        		$item['tag_title'] = $tag_title;
        	}else{
        		$item['tag_title'] = '';
        	}

        });
        $ifexif_page = $basic_data->render();
        $this->assign('ifexif_page',$ifexif_page);
        $this->assign('product_list',$basic_data);
        return $this->fetch();
      
    }

   
}