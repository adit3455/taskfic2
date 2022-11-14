import 'package:flutter/material.dart';
import 'package:taskfic2/pages/detail_screens.dart';

class RecommendedWidget extends StatelessWidget {
  final String name;
  final String price;
  final String star;
  final String image;
  const RecommendedWidget({
    Key? key,
    required this.name,
    required this.price,
    required this.star,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DetailsScreen())),
        child: Column(
          children: [
            Container(
              height: height * 0.16,
              width: width,
              decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(20.0)),
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.fill)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),
                    child: const Icon(
                      Icons.favorite_outline_outlined,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: height * 0.08,
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20.0)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 15.0),
                  ),
                  const SizedBox(height: 5.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$ $price",
                        style: const TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 18.0),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          const SizedBox(width: 5.0),
                          Text(
                            star,
                            style: const TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 15.0),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ); //
  }
}
