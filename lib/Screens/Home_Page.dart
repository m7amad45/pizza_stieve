import 'package:flutter/material.dart';
import 'package:kp/themes_constant.dart';
import 'Drawer_Screen.dart';

// home page

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  InkWell itemContainerStyle({
    required String itemName,
    required String itemImage,
  }) {
    // this for Item box (شكل الصندوق الي فيه البيتزا)
    return InkWell(
      onTap: () {
        print("object");
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        color: const Color(
          0xff212421,
        ),
        child: Expanded(
          child: Column(
            children: [
              Text(
                itemName,
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                itemImage,
                fit: BoxFit.scaleDown,
                height: 150,
                width: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HomeBgColor,
      appBar: AppBar(
          backgroundColor: HomeBgColor,
          centerTitle: true,
          title: const Text("pizza steve"),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart_outlined),
              onPressed: () {},
            ),
          ]),
      drawer: const DrawerScreen(),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(children: [
            Expanded(
              child: Image.asset(
                "assets/pizza.jpg",
              ),
            ),
          ]),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              itemContainerStyle(
                  itemName: "\nPepperoni Pizza",
                  itemImage: "assets/pngwing1.png"),
              const SizedBox(
                width: 10,
              ),
              itemContainerStyle(
                  itemName: "\nMargarita Pizza ",
                  itemImage: "assets/pngwing2.png"),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              itemContainerStyle(
                  itemName: "\nVegetarian Pizza",
                  itemImage: "assets/pngwing3.png"),
              const SizedBox(
                width: 10,
              ),
              itemContainerStyle(
                  itemName: "\nChicken Pizza",
                  itemImage: "assets/pngwing4.png"),
            ],
          ),
        ],
      ),
    );
  }
}
