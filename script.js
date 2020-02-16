// var img = ['https://cdn0.vox-cdn.com/thumbor/rIJswehchsS8rVPzXlNj7pVGDno=/cdn0.vox-cdn.com/uploads/chorus_asset/file/3971844/8_15_WDI_003.0.0.jpg', 'https://media.starwars.ea.com/content/starwars-ea-com/cs_CZ/starwars/battlefront/news-articles/star-wars-battlefront-gamescom-awards/_jcr_content/featuredImage.img.jpg','https://media.starwars.ea.com/content/starwars-ea-com/cs_CZ/starwars/battlefront/news-articles/star-wars-battlefront-movies-of-the-week/_jcr_content/featuredImage/renditions/rendition1.img.jpg']
var img = ['css/images/1.jpg', 'css/images/2.jpg', 'css/images/3.jpg', 'css/images/4.jpg', 'css/images/5.jpg', 'css/images/7.jpg', 'css/images/8.jpg', 'css/images/10.jpg', 'css/images/11.jpg', 'css/images/12.jpg']

$(document).ready(function(){
  $('#bg').css({'background-image':'url(' + img[Math.floor(Math.random()*img.length)] + ')'})  
});