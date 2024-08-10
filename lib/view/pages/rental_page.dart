import 'package:flutter/material.dart';
import 'package:mechine_testt/view/pages/home_screen.dart';
import 'package:mechine_testt/view/widgets/button_container.dart';

class RentalPage extends StatelessWidget {
  const RentalPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                stops: const [0.0, .6],
                colors: [Colors.yellow[700]!, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: CircleAvatar(
                  radius: screenWidth * 0.20,
                  backgroundImage: const AssetImage('assets/images (7).jpeg'),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Self Ride Bikes",
                      style: TextStyle(
                          fontSize: screenWidth * 0.20,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 7),
                      child: Text(
                        'Book bikes at flexible prices',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black),
                ),
                child: const Row(
                  children: [
                    Text(
                      '+91',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Mobile Number',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: ButtonContainer(
                  screenHeight: screenHeight,
                  txt: "Get Started",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
