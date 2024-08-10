import 'package:flutter/material.dart';
import 'package:mechine_testt/view/widgets/home_Page_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.menu),
                    Container(
                      width: screenWidth * 0.4,
                      height: screenHeight * 0.05,
                      decoration: BoxDecoration(
                          color: Colors.yellow[700],
                          borderRadius: BorderRadius.circular(20)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone),
                          Text(
                            "+91 1234567890",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.05,
                ),
                const Text(
                  'Welcome Anand Jain',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: screenHeight * 0.003,
                ),
                const Text(
                  "find your ride",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xFFaaaaaa)),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Container(
                  height: screenHeight * 0.20,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images (8).jpeg')),
                    color: Colors.yellow[700],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                const Text(
                  'Our Fleet',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                FleetContainer(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  img: "assets/images (9).jpeg",
                  bikename: "Activa 4G BS4",
                  price1: "500",
                  price2: "700",
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                FleetContainer(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    bikename: "Dio STD BS4",
                    img: "assets/images (10).jpeg",
                    price1: "500",
                    price2: "500"),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                FleetContainer(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    bikename: "Yamaha FZ V2",
                    img: "assets/images (11).jpeg",
                    price1: '700',
                    price2: '1000')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
