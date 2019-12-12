var img = ['imagenes/1.jpg', 'imagenes/2.jpg','imagenes/3.jpg']

$(document).ready(function(){
  $('body').css({'background-image':'url(' + img[Math.floor(Math.random()*img.length)] + ')'})  
});