$(function(){
	// 获取meta中的csrf token
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	// 将token作为请求头发送
	var headers = {};
	headers[header] = token;
	$(".jian").click(function(){
		var id1 = $(this).attr("name");
		$.ajax({
			url:"/shop/minus",
			type:"GET",
			data:{id:id1,count:$(".shuliang").val()},
			success:function(carStr){
				console.log($("strong.red[name='"+id1+"']")[0]);
				if(carStr==null){
					$("car"+id1).remove();
				}else{
					console.log($(".shuliang").val());
					console.log(parseInt(($("strong.red[name='"+id1+"']")[0].innerHTML).substr(1)));
//					console.log($("."+id1+"").val());
					
					$(".shuliang[name='"+id1+"']").val(carStr.count);
					$("strong.red[name='"+id1+"']")[0].innerHTML="￥"+(carStr.pro.price * carStr.count);
					$("strong.red[name='all']")[0].innerHTML="￥"+(parseInt(($("strong.red[name='all']")[0].innerHTML).substr(1))-carStr.pro.price);
				}
			},
			error:function(){
				alert("aaa")
			}
		});
	});
	
	
	$(".jia").click(function(){
		var id1 = $(this).attr("name");
		$.ajax({
			url:"/shop/addCarCount",
			headers:headers,
			type:"POST",
			contentType:"application/json; charset=UTF-8",
			data:JSON.stringify({id:id1}),
			dataType:"JSON",
			success:function(carStr){
				$(".shuliang[name='"+id1+"']").val(carStr.count);
				$("strong.red[name='"+id1+"']")[0].innerHTML="￥"+(carStr.pro.price * carStr.count);
				$("strong.red[name='all']")[0].innerHTML="￥"+(parseInt(($("strong.red[name='all']")[0].innerHTML).substr(1))+carStr.pro.price);
			}
		});
	});
	
	$(".green").click(function(){
		var id1 = $(this).attr("name");
		$.ajax({
			url:"/shop/deleteCar",
			type:"GET",
			data:{id:id1},
			success:function(carStr){
				$("car"+id1).remove();
			}
		});
	});
	
	$(".shanchu").click(function(){
		$.ajax({
			url:"/shop/deleteAllCar",
			type:"GET",
			success:function(carStr){
				$("tr[name='car']").remove();
			}
		});
	});
	
	$(".jiaruCar").click(function(){
		var proId = $(this).attr("name");
		$.ajax({
			url:"/shop/addCar",
			type:"GET",
			data:{id:proId},
			success:function(carStr){
			alert("添加成功");
		}
		});
	});
});