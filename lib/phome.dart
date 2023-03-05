import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:shoppy_app/Pcontent.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DraggableHome(
            backgroundColor: Colors.white,
            centerTitle: true,
            alwaysShowLeadingAndAction: true,
            //alwaysShowTitle: true,
            appBarColor: Color.fromARGB(181, 9, 158, 96).withOpacity(.8),
            leading: Icon(Icons.search),
            actions: [
              Image.asset(
                "images/notification.png",
                height: 35,
              ),
              Image.asset(
                "images/user.png",
                height: 35,
              ),
            ],
            title: Text("Shoppy",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Macondo",
                )),
            headerWidget: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "images/shopp.jpg",
                    ),
                  ),
                ),
                child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(250, 136, 173, 186).withOpacity(.5),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.only(left: 20, top: 40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  "It's Shopping Time!",
                                  style: TextStyle(
                                      fontSize: 33,
                                      fontFamily: "Macondo",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              Text(
                                "Let's Take a Look ",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Macondo",
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ]))),
            body: [
              Container(
                margin: EdgeInsets.all(10),
                child: InputDecorator(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    label: const Text(
                      "Categories",
                      style: TextStyle(
                          fontFamily: 'Macondo',
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.green),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("images/mens.jpg"))),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(99, 171, 190, 177),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: TextButton(
                            onPressed: (() {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                //pushreplacemt --remove it from stack
                                return Content(1);
                              }));
                            }),
                            child: const Center(
                              child: Text(
                                "Men's Clothes",
                                style: TextStyle(
                                    fontFamily: 'Macondo',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 150,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("images/jwel.jpg"))),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(99, 171, 190, 177),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: TextButton(
                            onPressed: (() {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                //pushreplacemt --remove it from stack
                                return Content(2);
                              }));
                            }),
                            child: const Center(
                              child: Text(
                                "Jwellery",
                                style: TextStyle(
                                  fontFamily: 'Macondo',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 150,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("images/wom.jpg"))),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(99, 171, 190, 177),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: TextButton(
                            onPressed: (() {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                //pushreplacemt --remove it from stack
                                return Content(3);
                              }));
                            }),
                            child: const Center(
                              child: Text(
                                "Women's Clothes",
                                style: TextStyle(
                                  fontFamily: 'Macondo',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 150,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("images/elec.jpg"))),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(99, 171, 190, 177),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: TextButton(
                            onPressed: (() {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                //pushreplacemt --remove it from stack
                                return Content(4);
                              }));
                            }),
                            child: const Center(
                              child: Text(
                                "Electronics",
                                style: TextStyle(
                                  fontFamily: 'Macondo',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]));
  }
}
