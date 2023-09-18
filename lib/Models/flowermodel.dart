class FlowerModel {
  final String id;
  final String name; 
  final String image; 
  final String price; 
  final String description; 

FlowerModel( {required this.id, required this.name, required this.image, required this.price, required this.description,});

}


List<FlowerModel> flowerLsit = [
  FlowerModel(id:'Basket', name: 'Tulip Flower ', image: 'images/tulip.png', price: "90.60" , description: 'The popularity for tulip flowers really hit the big time thanks to a Sultan in the 13th century who demanded the blooms were cultivated for his pleasure. '), 
  FlowerModel(id:'Basket', name: 'Lavender ', image: 'images/lavender.png', price: "50.60" , description: 'The popularity for tulip flowers really hit the big time thanks to a Sultan in the 13th century who demanded the blooms were cultivated for his pleasure. '), 
  FlowerModel(id:'Bouquet' , name: 'Purple Tulip ', image: 'images/tulipb.png', price: '80.90', description: 'Because purple dye was a luxury that only royals, or the super-wealthy, could afford, purple tulips have a meaning of royalty and elegance. In the 1500s, Queen Elizabeth even banned everyone except members of the royal family to wear purple as it was such a special colour!'), 
  FlowerModel(id:'Basket', name: 'Chrysanthemum', image: 'images/yel.png', price: '92.80', description: 'Chrysanthemums, sometimes called mums or chrysanths, are flowering plants of the genus Chrysanthemum in the family Asteraceae. They are native to East Asia and northeastern Europe. Most species originate from East Asia and the center of diversity is in China. Countless horticultural varieties and cultivars exist.'), 
  FlowerModel(id:'Bouquet', name: ' Ranunculus flower ', image: 'images/bug.png', price: '60.40', description: "According to floriography, Ranunculus symbolizes charm and attraction. So, the next time you want to tell someone you are “dazzled by their radiant charm,” given them a bouquet of Ranunculus blooms!"), 
  FlowerModel(id:'Bouquet', name: 'Yellow Purple Tulip ', image: 'images/bugt.png', price: '69.69', description: 'Because purple dye was a luxury that only royals, or the super-wealthy, could afford, purple tulips have a meaning of royalty and elegance. In the 1500s, Queen Elizabeth even banned everyone except members of the royal family to wear purple as it was such a special colour!'), 
  FlowerModel(id:'Rose' , name: 'White & Pink ', image: 'images/pinkwraper.png', price: '50.80', description: 'pink roses is gratitude and admiration. They\'re the perfect choice for the people you appreciate most, like your friends, siblings or teachers. Pink roses can also represent femininity and elegance, which makes them perfect for events like engagement parties, proms and baby showers for a baby girl'),  
  FlowerModel(id:'Rose' , name: 'Red Rose', image: 'images/brose.png', price: '50.80', description: 'pink roses is gratitude and admiration. They\'re the perfect choice for the people you appreciate most, like your friends, siblings or teachers. Pink roses can also represent femininity and elegance, which makes them perfect for events like engagement parties, proms and baby showers for a baby girl'),  
  FlowerModel(id:'Rose' , name: 'Pink Rose', image: 'images/roseb.png', price: '50.80', description: 'pink roses is gratitude and admiration. They\'re the perfect choice for the people you appreciate most, like your friends, siblings or teachers. Pink roses can also represent femininity and elegance, which makes them perfect for events like engagement parties, proms and baby showers for a baby girl'), 
  //FlowerModel(name: 'Wedding Flower Bouget', image: '', price: price, description: description)
];