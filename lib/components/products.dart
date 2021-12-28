class Sales{
  final String image;
  final String price;
  Sales(this.image, this.price);
}

class AllFruits{
  final String image;
  final String description;
  final String price;
  final dynamic color;
  AllFruits(this.image, this.description, this.price, this.color);
}

List<Sales> sales = [
  Sales("", "\$34"),
  Sales("", "\$20"),
  Sales("", "\$15"),
  Sales("", "\$5")
];

List<AllFruits> allFruits = [
  
  AllFruits("assets/images/Avocado.png", "fhdjshgergrehg  reg g rtiotue  treitu rtiert oqtfheiohfewioasf", "\$ 25", 0xFF2ED144),
  AllFruits("assets/images/grapes.png", "fhdjshfheiohfewioasf", "\$ 25", 0xFF9870CC),
  AllFruits("assets/images/apple.png", "fhdjshfheiohfewioasf", "\$ 25", 0xFFD96943),
  AllFruits("assets/images/watermelon.png", "fhdjshfheiohfewioasf", "\$ 25", 0xFFED261F)

];

