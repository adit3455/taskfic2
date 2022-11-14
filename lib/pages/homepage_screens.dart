import 'package:flutter/material.dart';
import 'package:taskfic2/const/listofdata.dart';

import '../widget/recomendation_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 20.0),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: const Icon(
          size: 30.0,
          Icons.list,
          color: Colors.black87,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              size: 30.0,
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 30.0,
          // backgroundColor: Colors.grey[600],
          elevation: 0,
          // selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(
            color: Colors.white,
          ),
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  )),
              label: "",
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: ""),
            const BottomNavigationBarItem(
              icon: Icon(Icons.star_border_outlined),
              label: "",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "",
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.home_outlined),
            //   label: "",
            // ),
          ]),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Discover the most modern furniture",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25.0),
            ),
            const SizedBox(height: 20.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10.0),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.grey),
                    child: const Text(
                      "All",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("Living Room")),
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("Bedroom")),
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("Dining Room")),
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("Kitchen")),
                ],
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              "Recomended Furnitures",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22.0),
            ),
            const SizedBox(height: 10.0),
            Expanded(
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return RecommendedWidget(
                      name: data[index]['name'].toString(),
                      price: data[index]['price'].toString(),
                      star: data[index]['star'].toString(),
                      image: data[index]['image'].toString());
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
