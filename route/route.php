<?php
	//开放平台地址
	// Route::domain('download.99php.cn', 'download');

	// //博客平台地址
	// Route::domain('blog.99php.cn', 'blog');

	//刷新缓存地址 密码：chung951222
	Route::get('cache/clean/:password', 'cache/clean/index');

	Route::get('/', 'blog/index/index'); 
	Route::get('/index', 'blog/index/index'); 

	Route::get('/case_detail/:id', 'blog/casement/detail');
	Route::get('/casement', 'blog/casement/index');
	Route::get('/casement/:cate', 'blog/casement/index');

	Route::get('/about', 'blog/about/index'); 
	Route::get('/article', 'blog/article/index'); 
	Route::any('/contact', 'blog/contact/index'); 
	Route::any('/cerate', 'blog/contact/cerate'); 
	Route::get('/introduce', 'blog/introduce/index'); 
	Route::get('/arti_detail/:id', 'blog/article/details'); 
	Route::get('/detail/:id', 'blog/product/detail'); 
	Route::get('/product', 'blog/product/index'); 

	Route::get('/console', 'admin/login/index'); 


