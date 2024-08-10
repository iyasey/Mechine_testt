import 'package:flutter/material.dart';

class FleetContainer extends StatelessWidget {
  final String img;
  final String bikename;
  final String price1;
  final String price2;

  const FleetContainer(
      {super.key,
      required this.screenWidth,
      required this.screenHeight,
      required this.bikename,
      required this.img,
      required this.price1,
      required this.price2});

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset(img),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bikename,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text("Starts from"),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Monday - Thursday",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Friday - Sunday",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: screenWidth * 0.03,
                    ),
                    Container(
                      height: screenHeight * 0.05,
                      width: 2,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: screenWidth * 0.03,
                    ),
                    Column(
                      children: [
                        Text(
                          price1,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          price2,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
      height: screenHeight * 0.18,
      decoration: BoxDecoration(border: Border.all(color: Colors.yellow[700]!)),
    );
  }
}
