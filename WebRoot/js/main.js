$(function() {

});
// 支付通道分类名称|支付通道名称联动
function statesShow(states_id) {
	$(".cardlista").css("display", "none");
	$("#number").attr("placeholder", "请输入手机号码");
	if (states_id == "1") {
		$("#number").attr("placeholder", "输入老挝20**21**30开头号码");
		$(".states_laowo").css("display", "block");
	} else if (states_id == "2") {
		$("#number").attr("placeholder", "输入缅甸手机号码：09****");
		$(".states_miandian").css("display", "block");
	} else if (states_id == "3") {
		$("#number").attr("placeholder", "输入泰国0****开头的手机号码");
		$(".states_taiguo").css("display", "block");
	} else if (states_id == "4") {
		$("#number").attr("placeholder", "输入菲律宾手机号码，以09开头");
		$(".states_feilvbin").css("display", "block");
	}
}
