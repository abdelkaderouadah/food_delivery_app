import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/view_model/onboarding_view_model.dart';
import 'package:food_delivery_app/theme/constance.dart';
import 'package:food_delivery_app/view/widgets/square_button.dart';
import 'package:get/get.dart';

class OnboardingView extends StatelessWidget {
  OnboardingView({Key? key}) : super(key: key);
  final _controller = OnboardingController();

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              child: Stack(
                children: [
                  PageView.builder(
                    controller: _controller.pageController,
                    onPageChanged: _controller.selectedPageIndex,
                    itemCount: _controller.onboardingPages.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  height: 320,
                                  width: 320,
                                  padding: const EdgeInsets.only(bottom: 40),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Get.isDarkMode
                                          ? primaryColor
                                          : Colors.green,
                                      width: 2,
                                    ),
                                  ),
                                  child: Center(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(115),
                                      child: Image.asset(
                                        _controller
                                            .onboardingPages[index].imageAsset,
                                      ),
                                    ),
                                  ),
                                ),
                                //starbuck
                                Positioned(
                                  right: 40,
                                  top: 0,
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
                                        _controller.onboardingPages[index]
                                            .imageAssetList[4],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                //kfc
                                Positioned(
                                  left: 20,
                                  bottom: 20,
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
                                        _controller.onboardingPages[index]
                                            .imageAssetList[0],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                //pizza hut
                                Positioned(
                                  left: 20,
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
                                        _controller.onboardingPages[index]
                                            .imageAssetList[3],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                //jimmy
                                Positioned(
                                  left: 145,
                                  bottom: 35,
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
                                        _controller.onboardingPages[index]
                                            .imageAssetList[1],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                //burgerking
                                Positioned(
                                  right: 40,
                                  bottom: 80,
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
                                        _controller.onboardingPages[index]
                                            .imageAssetList[2],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            addVerticalSpace(100),
                            Text(
                              _controller.onboardingPages[index].title,
                              style: _themeData.textTheme.headline3,
                              textAlign: TextAlign.center,
                            ),
                            addVerticalSpace(15),
                            Text(
                              _controller.onboardingPages[index].description,
                              style: _themeData.textTheme.headline5,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  Positioned(
                    bottom: constraints.maxHeight / 2 - 70,
                    left: constraints.maxWidth / 2 - 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        _controller.onboardingPages.length,
                        (index) => Obx(
                          () {
                            return Container(
                              height: 12,
                              width: 12,
                              margin: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color:
                                    _controller.selectedPageIndex.value == index
                                        ? yellowColor
                                        : yellowColor.withOpacity(0.5),
                                shape: BoxShape.circle,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: constraints.maxWidth / 2 - 30,
                    child: SquareIconButton(
                      onPressed: () {
                        //TODO forward button
                        // Get.isDarkMode
                        //     ? Get.changeTheme(lightTheme)
                        //     : Get.changeTheme(darkTheme);
                        _controller.forwardAction();
                        Get.isDarkMode
                            ? Get.changeTheme(lightTheme)
                            : Get.changeTheme(darkTheme);
                      },
                      width: 70,
                      borderRadius: 50,
                      buttonColor: primaryColor,
                      borderColor: primaryColor,
                      child: const Icon(
                        Icons.arrow_forward,
                        color: whiteColor,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
