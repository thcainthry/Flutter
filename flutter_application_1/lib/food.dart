class Food {
  String? imgUrl;
  String? name;
  String? price;
  String? quantity;
  String? description;
  String? ingredients;

  Food({
    this.imgUrl,
    this.name,
    this.price,
    this.quantity,
    this.description,
    this.ingredients,
  });

  static List<Food> generateRecommendFoods() {
    return [
      Food(
          imgUrl: 'assets/images/burger_fries.jpg',
          name: 'Burger & Fries',
          price: '15.99',
          quantity: '1',
          description: 'Burger & Fries',
          ingredients:
              'Beef Patty, Cheese, Lettuce, Tomato, Onion, Pickles, Ketchup, Mustard, Mayo, Fries'),
      Food(
          imgUrl: 'assets/images/calzone.jpg',
          name: 'Calzone',
          price: '12.99',
          quantity: '1',
          description: 'Calzone',
          ingredients:
              'Mozzarella, Ricotta, Pepperoni, Sausage, Marinara Sauce'),
      Food(
          imgUrl: 'assets/images/chicken_doner.jpg',
          name: 'Chicken Doner',
          price: '10.99',
          quantity: '1',
          description: 'Chicken Doner',
          ingredients:
              'Chicken, Lettuce, Tomato, Onion, Pickles, Garlic Sauce, Pita Bread'),
      Food(
          imgUrl: 'assets/images/fish.jpg',
          name: 'Fish & Chips',
          price: '14.99',
          quantity: '1',
          description: 'Fish & Chips',
          ingredients: 'Fish, Fries, Tartar Sauce'),
      Food(
          imgUrl: 'assets/images/lasagna.jpg',
          name: 'Lasagna',
          price: '13.99',
          quantity: '1',
          description: 'Lasagna',
          ingredients: 'Mozzarella, Ricotta, Ground Beef, Marinara Sauce'),
      Food(
          imgUrl: 'assets/images/moussaka.jpg',
          name: 'Moussaka',
          price: '12.99',
          quantity: '1',
          description: 'Moussaka',
          ingredients: 'Ground Beef, Eggplant, Potatoes, Bechamel Sauce'),
      Food(
          imgUrl: 'assets/images/paella.jpg',
          name: 'Paella',
          price: '16.99',
          quantity: '1',
          description: 'Paella',
          ingredients:
              'Rice, Shrimp, Mussels, Chicken, Chorizo, Peas, Bell Peppers, Onions, Garlic, Saffron'),
      Food(
          imgUrl: 'assets/images/pasta.jpg',
          name: 'Pasta',
          price: '11.99',
          quantity: '1',
          description: 'Pasta',
          ingredients: 'Pasta, Marinara Sauce, Parmesan Cheese'),
      Food(
          imgUrl: 'assets/images/pizza.jpg',
          name: 'Pizza',
          price: '9.99',
          quantity: '1',
          description: 'Pizza',
          ingredients: 'Mozzarella, Pepperoni, Sausage, Marinara Sauce'),
      Food(
          imgUrl: 'assets/images/ramen.jpg',
          name: 'Ramen',
          price: '11.99',
          quantity: '1',
          description: 'Ramen',
          ingredients: 'Noodles, Pork, Egg, Green Onions, Seaweed, Soy Sauce'),
      Food(
          imgUrl: 'assets/images/steak.jpg',
          name: 'Steak and Fries',
          price: '17.99',
          quantity: '1',
          description: 'Steak and Fries',
          ingredients: 'Steak, Fries, Garlic Butter'),
      Food(
          imgUrl: 'assets/images/sushi.jpg',
          name: 'Sushi',
          price: '14.99',
          quantity: '1',
          description: 'Sushi',
          ingredients:
              'Rice, Salmon, Tuna, Shrimp, Avocado, Cucumber, Soy Sauce')
    ];
  }
}
