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
				if(!carStr){
					$(".car"+id1).remove();
				}else{
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
				if($(".shuliang[name='"+id1+"']")){
					$(".shuliang[name='"+id1+"']").val(carStr.count);
				}
				if($("strong.red[name='"+id1+"']")[0]){
					$("strong.red[name='"+id1+"']")[0].innerHTML="￥"+(carStr.pro.price * carStr.count);
				}
				if($("strong.red[name='all']")[0]){
					$("strong.red[name='all']")[0].innerHTML="￥"+(parseInt(($("strong.red[name='all']")[0].innerHTML).substr(1))+carStr.pro.price);
				}
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
				$("strong.red[name='all']")[0].innerHTML=
					"￥"+(parseInt(($("strong.red[name='all']")[0].innerHTML).substr(1))-
							parseInt(($("strong.red[name='"+id1+"']")[0].innerHTML).substr(1)));
				$(".car"+id1).remove();
			}
		});
	});
	
	$(".shanchu").click(function(){
		$.ajax({
			url:"/shop/deleteAllCar",
			type:"GET",
			success:function(carStr){
				$("tr[name='car']").remove();
				$("strong.red[name='all']")[0].innerHTML="￥ 0.00";
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
	

	$(".shuliang").change(function(){
	});
	
	$(".jie_2").click(function(){
		var arr = "";
		$("input[name='carId']:checked").each(function(index){
			arr += ","+$(this).val();
		});
		var addresId = $("input[name='addres']:checked").attr("value");
		if(arr!=""){
			if(addresId){
				$(this).attr("href","/shop/createOrder?ids="+arr.substr(1)+"&addresId="+addresId);
			}else{
				alert("请选择地址");
			}
		}else{
			alert("请选择要购买的商品");
		}
	});
	
});