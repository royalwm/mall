var wmShow={
				show:function(param){
				var dialog='<div class="wmShow_box" style="position:fixed;bottom:0;right:0;border-radius:5px;display: flex;flex-direction: column;">'+
							'<div class="wmShow_title">123</div>'+
							'<div class="wmShow_body">456</div>'+
						'</div><audio id="voice"></audio>';
					$(window).load(function(){ 
						$(document.body).append(dialog); 
						$(".wmShow_box").css({background:param.boxBgColor,width:param.width,height:param.height,border:param.border})
						.slideUp(param.time);
						$(".wmShow_title").html(param.title).css(param.titleStyle);
						$(".wmShow_body").html(param.body).css(param.bodyStyle);
						$("#voice").attr("src","https://fanyi.baidu.com/gettts?lan=zh&text="+$(".wmShow_body").html()+"&spd=5&source=web")[0].play();
						});
				}
		}
		/*wmShow.show({
			time:5000,
			boxBgColor:"#ccc",
			width:"350px",
			height:"200px",
			border:"5px solid #ccc",
			title:"提示",
			body:"欢迎王猛",
			bodyStyle:{
				borderRadius:"5px",
				color:"#000",
				fontSize:"20px",
				padding:"10px"
			},
			titleStyle:{
					background:"#428bca",
					borderRadius:"5px",
					color:"#000",
					fontSize:"16px",
					padding:"5px"
			}
		})
*/