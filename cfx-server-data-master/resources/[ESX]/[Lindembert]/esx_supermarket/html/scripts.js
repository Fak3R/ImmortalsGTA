var prices = {}
var maxes = {}
var zone = null

// Partial Functions
function closeMain() {
	$("body").css("display", "none");
}
function openMain() {
	$("body").css("display", "block");
}
$(".close").click(function(){
    $.post('http://esx_supermarket/quit', JSON.stringify({}));
});
// Listen for NUI Events
window.addEventListener('message', function (event) {

	var item = event.data;

	// Open & Close main window
	if (item.message == "show") {
		if (item.clear == true){
			$( ".home" ).empty();
			prices = {}
			maxes = {}
			zone = null
		}
		openMain();
	}

	if (item.message == "hide") {
		closeMain();
	}
	
	if (item.message == "add"){
		$( ".home" ).append('<div class="card">' +
					'<div class="text-top">'+
					'<h4><b>' + item.label + '</b></h4>'+
					'</div>'+
					'<div class="box-img" align="center">'+
					'<img src="img/' + item.item + '.png" alt="' + item.label + '"  style="width: auto;height: auto;">' + 
					'</div>'+
					'<div class="container">' + 
						'<div class="quantity">' + 
							'<b><div class="plus-btn btnquantity" name="' + item.item + '" id="plus">' + 
								'<i class="fa fa-plus"></i>' + 
							'</b></div>' +
							'<span class="number" name="name" style="font-size: 16px;color: #fff;">1</span>' + 
							'<div class="minus-btn btnquantity" name="' + item.item + '" id="minus">' + 
								'<i class="fa fa-minus"></i>' + 
							'</div>' +
						'</div>' +
						'<button class="purchase buy" name="' + item.item + '">' + 
							'<span class="price"><b>' + item.price + '$' + '</b></span>' +
							' <span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Comprar</span>'+
						'</button>' +
					'</div>' +
				'</div>');
		prices[item.item] = item.price;
		maxes[item.item] = item.max;
		zone = item.loc;
	}
});

$(".home").on("click", ".btnquantity", function() {
	
	var $button = $(this);
	var $name = $button.attr('name')
	var oldValue = $button.parent().find(".number").text();
	if ($button.get(0).id == "plus") {
		if (oldValue <  maxes[$name]){
			var newVal = parseFloat(oldValue) + 1;
		}else{
			var newVal = parseFloat(oldValue);
		}
	} else {
	// Don't allow decrementing below zero
		if (oldValue > 1) {
			var newVal = parseFloat(oldValue) - 1;
		} else {
			newVal = 1;
		}
	}
	$button.parent().parent().find(".price").text((prices[$name] * newVal) + "$");
	$button.parent().find(".number").text(newVal);

});

$(".home").on("click", ".buy", function() {
	var $button = $(this);
	var $name = $button.attr('name')
	var $count = parseFloat($button.parent().parent().find(".number").text());
	$.post('http://esx_supermarket/purchase', JSON.stringify({
		item: $name,
		count: $count,
		loc: zone
	}));
});
