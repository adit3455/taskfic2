import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static const routeName = 'detail-product';
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            snap: false,
            pinned: false,
            floating: false,
            title: const Text(
              "Detail",
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
              "https://images.prismic.io/msj-dev/9d25ebe1-1844-4cd2-852d-486afe461eb5_waiting-room-in-minimal-style-2021-08-26-15-45-26-utc.JPG?auto=compress,format",
              fit: BoxFit.cover,
            ) //Images.network
                ), //FlexibleSpaceBar
            expandedHeight: MediaQuery.of(context).size.height * 0.6,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              tooltip: 'Menu',
              onPressed: () {
                Navigator.pop(context);
              },
            ), //IconButton
            actions: <Widget>[
              Container(
                margin: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.all(4.0),
                child: const Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.red,
                ),
              ), //IconButton
              const Icon(
                Icons.share_outlined,
                color: Colors.black,
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(10.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      width: 30,
                      height: 5,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Wooden Coff",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "\$240",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                  ),
                  Row(
                    children: const [
                      Icon(Icons.star, color: Colors.orange),
                      SizedBox(width: 5.0),
                      Icon(Icons.star, color: Colors.orange),
                      SizedBox(width: 5.0),
                      Icon(Icons.star, color: Colors.orange),
                      SizedBox(width: 5.0),
                      Icon(Icons.star, color: Colors.orange),
                      SizedBox(width: 5.0),
                      Icon(Icons.star, color: Colors.orange),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "choose a color",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                        ),
                      ),
                      Row(
                        children: [
                          const CircleAvatar(
                            maxRadius: 18,
                            backgroundColor: Colors.grey,
                            child: CircleAvatar(
                              maxRadius: 17,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                maxRadius: 15,
                                backgroundColor: Colors.grey,
                              ),
                            ),
                          ),
                          const SizedBox(width: 5.0),
                          const CircleAvatar(
                            maxRadius: 15,
                            backgroundColor: Colors.orange,
                          ),
                          const SizedBox(width: 5.0),
                          CircleAvatar(
                              maxRadius: 15, backgroundColor: Colors.brown[50]),
                          const SizedBox(width: 5.0),
                          const CircleAvatar(
                            maxRadius: 15,
                            backgroundColor: Colors.brown,
                          ),
                        ],
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Select Quality",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.remove)),
                          const SizedBox(width: 5.0),
                          const Text("2"),
                          const SizedBox(width: 5.0),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.remove)),
                        ],
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                  ),
                  const Text(
                    "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloremque modi, nesciunt reiciendis unde eveniet voluptates explicabo molestiae dignissimos, voluptatum ea voluptas et minima totam beatae consectetur odio. Nisi, et architecto! Adipisci obcaecati quae deserunt ut magnam, hic odio, voluptatem porro neque dolorem repellat nulla expedita consequuntur, tenetur rem quaerat. Nesciunt?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12.0),
                    margin: const EdgeInsets.all(12.0),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                      color: Colors.grey,
                    ),
                    child: const Center(
                      child: Text(
                        "ADD TO CART",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
