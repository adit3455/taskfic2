import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, String>> data = [
    {
      "name": "Stylish Chair",
      "price": "170",
      "star": "7.9",
      "image":
          "https://images.prismic.io/msj-dev/9d25ebe1-1844-4cd2-852d-486afe461eb5_waiting-room-in-minimal-style-2021-08-26-15-45-26-utc.JPG?auto=compress,format",
    },
    {
      "name": "Modern Table",
      "price": "75",
      "star": "4.9",
      "image":
          "https://i0.wp.com/zuschnittprofi.de/wp-content/uploads/master-bedroom-in-pastel-colors-with-vintage-furni-2021-08-26-15-32-58-utc-scaled.jpg?fit=2048%2C1171&ssl=1",
    },
    {
      "name": "Wooden Console",
      "price": "240",
      "star": "4.7",
      "image":
          "https://www.wohnraum8.de/wp-content/uploads/2021/12/dining-room-with-stairs-2021-08-26-15-44-30-utc.jpg",
    },
    {
      "name": "Brown Armchair",
      "price": "210",
      "star": "4.9",
      "image":
          "https://cabinetbazaar.com/wp-content/uploads/2022/04/retro-blue-kitchen-2021-08-26-15-32-58-utc-1-1067x800.jpg",
    },
  ];
  HomePage({
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
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
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
            const SizedBox(
              height: 30.0,
            ),
            const Text(
              "Recomended Furnitures",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22.0),
            ),
            const SizedBox(height: 10.0),
            Expanded(
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) => RecommendedWidget(
                      title: data[index]['name'].toString(),
                      price: data[index]['price'].toString(),
                      star: data[index]['star'].toString(),
                      image: data[index]['image'].toString()),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2)),
            ),
          ],
        ),
      )),
    );
  }
}

class RecommendedWidget extends StatelessWidget {
  final String title;
  final String price;
  final String star;
  final String image;
  const RecommendedWidget({
    Key? key,
    required this.title,
    required this.price,
    required this.star,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.all(8),
      height: height * 0.3,
      width: double.infinity,
      child: Stack(
        children: [
          Image.network(
            image,
            height: height * 0.18,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: width * 0.025),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: const Icon(
              Icons.favorite_border_outlined,
              color: Colors.red,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 18.0),
                ),
                const SizedBox(height: 8.0),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(price,
                          style: const TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 20.0,
                              color: Colors.black87)),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.orange),
                          const SizedBox(width: 5.0),
                          Text(star,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 18.0,
                                  color: Colors.black87)),
                        ],
                      ),
                    ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
