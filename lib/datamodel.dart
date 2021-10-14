class Item{
  var user, time,rating,reviews,pro_name,price,quantity,pro_image,sale;
  Item({this.user,this.rating,this.reviews,this.time,this.price,this.pro_name,this.quantity,this.pro_image,this.sale});
}

class RatingReviews{
  var list = [
    Item(
      user: 'Jonathond H.',
      time: ' 3 weeks ago',
      rating: '3',
      reviews: '100% Authentic Product. Recommend highly the Econix Store. Great Product!'
    ),
    Item(
        user: 'Anderson Coo.',
        time: ' 5 weeks ago',
        rating: '4',
        reviews: '100% Authentic Product. Recommend highly the Econix Store. Great Product!'
    ),
  ];
}

class MyCartClass{
  var list = [
    Item(
        pro_image: 'images/main-4-624x416.jpg',
        pro_name: 'Airpod',
        price: '\$23',
        quantity: '1',

    ),
    Item(
        pro_image: 'images/main-4-624x416.jpg',
        pro_name: 'Camera',
        price: '\$23',
        quantity: '1',
        sale: true,
    ),
    Item(
        pro_image: 'images/main-4-624x416.jpg',
        pro_name: 'Game Pad',
        price: '\$23',
        quantity: '1'
    ),
    Item(
        pro_image: 'images/main-4-624x416.jpg',
        pro_name: 'CCTV',
        price: '\$23',
        quantity: '1'
    ),
    Item(
      pro_image: 'images/main-4-624x416.jpg',
      pro_name: 'Speaker',
      price: '\$23',
      quantity: '1'
    ),
    Item(
        pro_image: 'images/main-4-624x416.jpg',
        pro_name: 'Lens',
        price: '\$23',
        quantity: '1'
    ),
    Item(
        pro_image: 'images/main-4-624x416.jpg',
        pro_name: 'Laptop',
        price: '\$23',
        quantity: '1'
    ),
    Item(
        pro_image: 'images/main-4-624x416.jpg',
        pro_name: 'MacBook',
        price: '\$23',
        quantity: '1'
    ),
  ];
}
