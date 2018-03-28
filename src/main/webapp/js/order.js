$(function() {
	$(".addrAlter").live("click", function() {
		$("#receiverEditWindow").window({
			top : 50
		}).window("open");
	})

	$(".addReceiver").live("click", function() {
		$("#receiverEditWindow").window({
			top : 50
		}).window("open");
	})
})