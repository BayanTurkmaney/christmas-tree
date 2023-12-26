import 'package:christmas_tree/widgets/banner_widget.dart';
import 'package:christmas_tree/widgets/brown_part_widget.dart';
import 'package:christmas_tree/widgets/christmas_wearth_widget.dart';
import 'package:christmas_tree/widgets/green_part_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.width;
    double greenHeight = 500;
    double brownHeight = 250;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const Positioned( top: 0, left: 0,child:  BannerWidget()),
             const Positioned( top: 0,right: 0, child: BannerWidget()),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.07),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: screenHeight*0.13),
                        height: greenHeight,
                        child: ClipPath(
                            clipper: GreenPartWidget(w: screenWidth, h: greenHeight),
                            child: Container(
                              width: double.infinity,
                              height: 500,
                              color: Colors.green,
                            )),
                      ),
                      ChristmasWreathWidget(
                          greenHeight: greenHeight, screenWidth: screenWidth),
                    ],
                  ),
                  const SizedBox( height: 2),
                  Container(
                    padding: const EdgeInsets.all(1),
                    height: brownHeight,
                    child: ClipPath(
                        clipper: BrownPartWidget(
                            w: screenWidth, h: brownHeight),
                        child: Container(
                          width: double.infinity,
                          height: brownHeight,
                          color: Colors.brown,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}






