// //Menu
// // you must include class "amok-menu" to your html file
// //<ul class="amok-menu"></ul>
// $.ajax({
//     url:'/api/category/getAll',
//     type:"GET",
//     success:function(response){
//         //console.log("ajax = "+response);
//         response=JSON.parse(response);
//  		$(response).each(function(index,item){
//  			if(index==0){
//  				$('.amok-menu').html('<li class=""><a href="'+item.slug+'">'+item.name+'</a></li>');
//  			}
//  			else{
//  				$('.amok-menu').append('<li class=""><a href="'+item.slug+'">'+item.name+'</a></li>');
//  			}
//  		});
//     }
// })
// //post
// // you must 
// $.ajax({
//     url:'/api/post/getAll',
//     type:"GET",
//     success:function(response){
//         //console.log("ajax = "+response);
//         response=JSON.parse(response);
//  		$(response).each(function(index,item){
//  			$('.posts').append('<div class="box1 col-xs-12 col-sm-12 col-md-12 col-lg-12" style="padding:0px;margin-top:14px; background-color: rgb(248, 248, 248);"><div class="testimonial-section" style="padding:0px;"><div class="col-xs-12 col-sm-2 col-md-2 col-lg-2"><img class="img-responsive" src="/'+item.feature_image+'"  alt="Cinque Terre"  > </div><div class="col-xs-12 col-sm-8 col-md-8 col-lg-8"><h4><a href="/'+item.slug+'">'+item.title+'</a></h4><p>'+item.description+'</p></div><div class="col-xs-12 col-sm-2 col-md-2 col-lg-2 hidden-xs"><h4><a href="/'+item.slug+'"><p style="line-height:400%;" class="pull-right"><i class="fa fa-eye" aria-hidden="true"></i>View</p></a></h4></div></div></div>');
//  		});
//     }
// })