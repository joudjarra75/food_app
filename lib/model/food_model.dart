class FoodModel {
  final String name;
  final double price;
  final String img;
  final String description;
  final bool isFav;

  FoodModel({
    required this.name,
    required this.price,
    required this.description,
    required this.img,
    this.isFav = false
  });


  FoodModel copyWith({
    String? name,
    double? price,
    String? description,
    String? img,
    bool? isFav

  }) {
    return FoodModel(
        name: name ?? this.name,
        price: price ?? this.price,
        description: description ?? this.description,
        img: img ?? this.img,
    isFav:  isFav ?? this.isFav);
  }
}

List<FoodModel> meals = [
  FoodModel(
    name: 'Waffle Fries',
    price: 2.11,
    description:
        "Micah Peters: You know the scene in Scott Pilgrim vs. the World where Scott tells Ramona that, were he to have his way, he’d eat garlic bread forever without ever having to stop? I could probably do that with Chick-fil-A waffle fries. Except then I'd get fat. Fries make you fat.",
    img: "https://fastfood.theringer.com/img/items/1.jpg",

  ),
  FoodModel(
    name: 'Double-Double',
    price: 4.04,
    description:
        "Riley McAtee: There's one small change that can take the Double-Double from “best burger ever” to “literal perfection between two buns.” Ask for grilled onions—instead of the sliced onion—the next time you order one. It gets you halfway to Animal Style for free.",
    img: "https://fastfood.theringer.com/img/items/2.jpg",

  ),
  FoodModel(
    name: 'Chicken Popeyes',
    price: 6.77,
    description:
        "K. Austin Collins: The only bad thing about Beyoncé is that she has a lifetime of free chicken at Popeyes but, being a vegan, can't take advantage of it. Imagine having unfettered access to that succulent meat and those perfectly crisp and savory flaps of fried skin every day. OK—so some of us are already practically living that life. But imagine living it for free.",
    img: "https://fastfood.theringer.com/img/items/4.jpg",
  ),
  FoodModel(
    name: 'Chicken Sandwich',
    price: 3.90,
    description:
        "Hannah Giorgis: The Chick-fil-A chicken sandwich is transcendent. The perfect combination of a generous portion of breaded chicken, soft bun, and tart pickles, it's enhanced by only one thing: Polynesian sauce.",
    img: "https://fastfood.theringer.com/img/items/5.jpg",

  ),
  FoodModel(
    name: "Curly Fries Arby's",
    price: 2.55,
    description:
        "Megan Schuster: Picture some of the best things in life: grandiose spiral staircases; chocolate-vanilla swirl ice cream cones; Slinkies descending slowly down steps. What do they all have in common? Their shape. Apply that same shape to salted, deep-fried potatoes, and of course you'd end up with perfection in physical form: Arby's curly fries.",
    img: "https://fastfood.theringer.com/img/items/6.jpg",
  ),
  FoodModel(
    name: "Bacon Cheeseburger",
    price: 11.12,
    description:
        "Chris Almeida: Bacon cheeseburgers are great because beef is great, cheese is great, and bacon is great, and these things are all great together. But most fast-food hamburgers taste vaguely savory, seem to be made of ingredients that are only food-like, and have the texture of sludge once they're in your mouth. The burger at Five Guys tastes like an actual bacon cheeseburger made with beef and bacon, and that's why it's good. This isn't complicated.",
    img: "https://fastfood.theringer.com/img/items/10.jpg",
  ),
  FoodModel(
    name: "Cheesy Gordita Crunch",
    price: 3.44,
    description:
        "Sean Fennessey: An effective fast-food experience hinges on texture. Mouthfeel. Most fast food is rough and salty or mushy and gelatinous. But rarely the twain shall meet in one package. Except, of course, for the double-tortilla, hard-soft, cheesy, beefy, sturdy, peerless Cheesy Gordita Crunch, Taco Bell's perennial off-menu, on-point secret weapon",
    img: "https://fastfood.theringer.com/img/items/15.jpg",
  ),
  FoodModel(
    name: "Shack Burger",
    price: 5.55,
    description:
        "Caitlin Blosser: The Shake Shack ShackBurger is perfect. It’s simple, yet high quality. From the bun to the sauce, you can’t eat one without feeling satisfied. For those that say it’s not fast food, it started out as a food cart. That’s about as fast and basic as you can make food.",
    img: "https://fastfood.theringer.com/img/items/18.jpg",
  ),
  FoodModel(name: "Two Tacos for 99¢", price: 0.99, description: r"Jason Gallagher: Where to start? How about that no other fast-food item is known for having its price in the title—because it's THAT good. You could feed yourself for a week for like $10 with these tacos. Next there's the quantity, which happens to be TWO. I don't need to sell you on the number two—the gods Marvin Gaye and Kim Weston have done that for us. Lastly, and this is key, we're talking about tacos. Find someone who doesn't like a greasy, mysterious, delicious taco, and you've found yourself Beelzebub incarnate", img: "https://fastfood.theringer.com/img/items/19.jpg"),
FoodModel(name: "Spicy Chicken Sandwich", price: 6.00, description: "Ben Glicksman: Wendy’s spicy chicken sandwich is the Larry Fitzgerald of fast-food items: It’s no longer the newest or most exciting option out there, but it’s a surefire Hall of Famer. The meat is thick and juicy, it’s perfectly seasoned,  and it consistently produces— make no mistake, it can still single-handedly win you a meal.", img: "https://fastfood.theringer.com/img/items/20.jpg")
];
