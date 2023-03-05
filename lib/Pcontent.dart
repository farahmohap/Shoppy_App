import 'package:flutter/material.dart';
import 'package:shoppy_app/getdata.dart';
import 'package:shoppy_app/phome.dart';

int? id;

class Content extends StatefulWidget {
  Content(int? d) {
    id = d;
  }

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  void initState() {
    GetData.getData();
    print(id);
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(181, 9, 158, 96).withOpacity(.8),
        leading: SizedBox(
          child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  //pushreplacemt --remove it from stack
                  return Categories();
                }));
              }),
        ),
        actions: [
          Image.asset(
            "images/cart.png",
          ),
          Image.asset(
            "images/notification.png",
          ),
          Image.asset(
            "images/user.png",
          ),
        ],
        title: const Text("Shoppy",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: "Macondo",
            )),
      ),
      body: (GetData.data.isEmpty)
          ? const Center(
              child: CircularProgressIndicator(
              color: Color.fromARGB(255, 36, 219, 42),
              strokeWidth: 2,
            ))
          : Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/shopp.jpg"),
                      fit: BoxFit.cover)),
              child: Container(
                color: Color.fromARGB(132, 249, 245, 245),
                child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      for (int i = 0; i < GetData.data.length; i++)
                        if (id == 1 &&
                            GetData.data[i]['category'] == "men's clothing")
                          content(size, i)
                        else if (id == 2 &&
                            GetData.data[i]['category'] == "jewelery")
                          content(size, i)
                        else if (id == 3 &&
                            GetData.data[i]['category'] == "women's clothing")
                          content(size, i)
                        else if (id == 4 &&
                            GetData.data[i]['category'] ==
                                "electronics") //electronics
                          content(size, i)
                    ]),
              ),
            ),
    );
  }
}

content(size, i) {
  return Container(
    decoration: BoxDecoration(
        color: Color.fromARGB(236, 255, 255, 255),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    margin: EdgeInsets.all(10),
    child: ListTile(
      leading: Container(
        width: size * .1,
        child: Image.network(
          "${GetData.data[i]['image']}",
          fit: BoxFit.contain,
        ),
      ),
      title: Text(
        '${GetData.data[i]['title']}',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '${GetData.data[i]['rating']['rate']}',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 15,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '${GetData.data[i]['rating']['count']}',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.person,
                size: 15,
              )
            ],
          ),
          Text(
            '${GetData.data[i]['description']}',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "${GetData.data[i]['price']} \$ ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                  child: Text(
                    "Add To Cart",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  minWidth: size * .25,
                  color: Color.fromARGB(218, 235, 26, 11),
                  onPressed: () {}),
            ],
          )
        ],
      ),
    ),
  );
}
