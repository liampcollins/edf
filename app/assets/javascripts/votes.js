$(document).ready(function(){
	// console.log("hello")
	// $('input[type="range"]').rangeslider({
	// 	rangeClass: 'rangeslider',
 //    fillClass: 'rangeslider__fill',
 //    handleClass: 'rangeslider__handle'
	// });



function refreshValue (){
	var value = $(this).slider( "value" );
	var id = $(this)[0].id
	var counter = '#'+ id + '-counter'
	$(counter ).text(value)
}

$(function() {
		console.log("hello")

    $( "#finance, #skills, #busenv, #culture, #inf, #diginf, #agglom, #market, #lifestyle" ).slider({
      orientation: "horizontal",
      range: "min",
      max: 100,
      value: 50,
      slide: refreshValue,
      change: refreshValue
    });
  });


});

	// $('input[type="range"]').rangeslider();



