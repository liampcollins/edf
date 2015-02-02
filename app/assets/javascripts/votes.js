
var data = new Object();
var factors;

function request(method, url, data){
  return $.ajax({
    method: method,
    url: url,
    dataType: "json",
    data: data
  });
};


function refreshValue (){
	var value = $(this).slider( "value" );
	var id = $(this)[0].id.split("-")[0];
	var counter = '#'+ id;
	$(counter ).text(value);
};

function submitVote(){
	factors = $('.counter');
	$.each(factors, function(index, value){
		data[value.id] = parseInt(value.innerHTML)
	});
  request("POST", "/votes", {vote:data}).success(function(){
  	initiateSlider();
  	$(".success-notice").html("Thank you for submitting your selection")
  });
};


function initiateSlider(){
	$(".slider").slider({
	  orientation: "horizontal",
	  range: "min",
	  max: 100,
	  value: 50,
	  slide: refreshValue,
	  change: refreshValue
	});
};

$(document).ready(function(){
	initiateSlider();
	$('.submit-vote').on('click', submitVote);
});


