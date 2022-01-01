import 'package:flutter/material.dart';

class MultiImages extends StatelessWidget {
  const MultiImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
            border: Border.all(
              color: Colors.green,
              width: 2,
            ),
          ),
          child: Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: 20,
                  left: -5,
                  child: Container(
                    height: 240,
                    width: 240,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(115),
                  child: Image.asset(
                    "assets/images/onboarding/photo1.png",
                    height: 270,
                    width: 230,
                    fit: BoxFit.none,
                    // fit: BoxFit.cover,
                  ),
                ),
                //starbuck
                Positioned(
                  right: 0,
                  top: -20,
                  child: Container(
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/logo/starbuck.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                //kfc
                Positioned(
                  left: -20,
                  bottom: -20,
                  child: Container(
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/onboarding/kfc.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                //pizza hut
                Positioned(
                  left: -20,
                  top: 100,
                  child: Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/logo/pizza_hut.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                //jimmy
                Positioned(
                  left: 100,
                  bottom: -15,
                  child: Container(
                    height: 30,
                    width: 30,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/logo/jimmy_jhons.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                //burgerking
                Positioned(
                  right: -5,
                  bottom: 35,
                  child: Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/logo/burger_king.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
