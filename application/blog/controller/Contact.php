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


use app\common\controller\BlogController;


class Contact extends BlogController {

    public function index() {
        return $this->fetch();
    }

    public function cerate(){
        $post = $this->request->post();
        
        $result = db('blog_information')->insert($post);

        if ($result){
            return json(array('code'=>1, 'msg'=>'数据添加成功!'));
        }else{
            return json(array('code'=>0, 'msg'=>'数据添加失败!'), 'json');
        }
        
    }



}