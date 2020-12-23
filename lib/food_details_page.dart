import 'package:flutter/material.dart';
import 'package:flutterui_food_truck/models/food.dart';

class FoodDetailsPage extends StatefulWidget {
  FoodDetailsPage({Key key}) : super(key: key);

  @override
  _FoodDetailsPageState createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  Size _size;

  List<Food> foodList = [
    Food(
        name: 'Maple Mustard Tempeh',
        description:
            'A hamburger is a sandwich consisting of one or more cooked patties ',
        price: '11.25',
        imageUrl: 'assets/images/burger1.jpeg'),
    Food(
        name: 'Gochuijan Glozed Crispy seitan',
        description:
            'A hamburger is a sandwich consisting of one or more cooked patties ',
        price: '12.25',
        imageUrl: 'assets/images/burger2.jpeg'),
    Food(
        name: 'Crispy Devil Chiken Burger',
        description:
            'A hamburger is a sandwich consisting of one or more cooked patties ',
        price: '17.25',
        imageUrl: 'assets/images/burger3.jpeg'),
    Food(
        name: 'Cheese Burger Tempeh',
        description:
            'A hamburger is a sandwich consisting of one or more cooked patties ',
        price: '15.25',
        imageUrl: 'assets/images/burger4.jpeg'),
    Food(
        name: 'Grilled  Mustard Tempeh',
        description:
            'A hamburger is a sandwich consisting of one or more cooked patties ',
        price: '41.25',
        imageUrl: 'assets/images/burger5.jpeg')
  ];

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: _size.height * 0.38,
                  width: _size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/burger2.jpeg'))),
                ),
                Positioned(
                    right: 30,
                    top: 40,
                    child: Container(
                      child: Icon(
                        Icons.favorite,
                        size: 30,
                        color: Colors.redAccent,
                      ),
                    )),
                Positioned(
                    left: 30,
                    top: 40,
                    child: Container(
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                        color: Colors.white,
                      ),
                    )),
                Positioned(
                    left: 30,
                    bottom: 15,
                    child: Container(
                        child: Row(
                      children: [
                        for (int i = 0; i < 5; i++)
                          Icon(Icons.star, size: 20, color: Colors.deepOrange),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '4.7',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 30),
                        for (int i = 0; i < 5; i++)
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 3),
                            height: i == 0 ? 7 : 5,
                            width: i == 0 ? 7 : 5,
                            decoration: BoxDecoration(
                                color: i == 0 ? Colors.white : Colors.grey,
                                shape: BoxShape.circle),
                          )
                      ],
                    )))
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'OPEN NOW UNTIL 7PM',
                    textScaleFactor: 1.0,
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'The Cinamon Snail',
                    textScaleFactor: 1.0,
                    style: TextStyle(
                        fontSize: 30,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        '17th st & Union Sq Est',
                        textScaleFactor: 1.0,
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey,
                            fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.location_pin,
                        color: Colors.grey,
                        size: 17,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '400ft Away',
                        textScaleFactor: 1.0,
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.wifi,
                        color: Colors.green,
                        size: 17,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Location confirmed by 3 users today',
                        textScaleFactor: 1.0,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.green,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    height: 2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'FEATURED ITEMS',
                    textScaleFactor: 1.0,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            for (Food food in foodList)
              Card(
                elevation: 0,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 110,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(food.imageUrl))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          food.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            width: _size.width * 0.65,
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    food.description,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.grey),
                                  ),
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '\$${food.price}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
