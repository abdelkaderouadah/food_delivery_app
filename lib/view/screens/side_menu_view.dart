import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme/constance.dart';
import 'package:food_delivery_app/view/widgets/icon_button.dart';
import 'package:get/get.dart';

class SideMenuView extends StatelessWidget {
  const SideMenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    return SizedBox(
      child: Drawer(
        child: Container(
          padding: const EdgeInsets.only(left: 30, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "assets/images/user.png",
                  fit: BoxFit.cover,
                  height: 100,
                  width: 100,
                ),
              ),
              addVerticalSpace(20),
              Text(
                "Ouadah Abdelkader",
                style: _themeData.textTheme.headline4!.copyWith(fontSize: 20),
              ),
              addVerticalSpace(10),
              Text(
                "ouadah.abdelkader9@gmail.com",
                style: _themeData.textTheme.headline5!.copyWith(fontSize: 12),
              ),
              addVerticalSpace(20),
              ListTile(
                leading: Get.isDarkMode
                    ? Image.asset("assets/images/side_menu/document_dark.png")
                    : Image.asset("assets/images/side_menu/document.png"),
                title: Text(
                  "My Orders",
                  style: _themeData.textTheme.subtitle1,
                ),
                onTap: () {
                  //TODO myOrders
                },
              ),
              ListTile(
                leading: Get.isDarkMode
                    ? Image.asset("assets/images/side_menu/profile_dark.png")
                    : Image.asset("assets/images/side_menu/profile.png"),
                title: Text(
                  "My Profile",
                  style: _themeData.textTheme.subtitle1,
                ),
                onTap: () {
                  //TODO profile
                },
              ),
              ListTile(
                leading: Get.isDarkMode
                    ? Image.asset("assets/images/side_menu/location_dark.png")
                    : Image.asset("assets/images/side_menu/location.png"),
                title: Text(
                  "Delivery Address",
                  style: _themeData.textTheme.subtitle1,
                ),
                onTap: () {
                  //TODO delivery adress
                },
              ),
              ListTile(
                leading: Get.isDarkMode
                    ? Image.asset("assets/images/side_menu/wallet_dark.png")
                    : Image.asset("assets/images/side_menu/wallet.png"),
                title: Text(
                  "Payment Methods",
                  style: _themeData.textTheme.subtitle1,
                ),
                onTap: () {
                  //TODO Payment
                },
              ),
              ListTile(
                leading: Get.isDarkMode
                    ? Image.asset("assets/images/side_menu/message_dark.png")
                    : Image.asset("assets/images/side_menu/message.png"),
                title: Text(
                  "Contact Us",
                  style: _themeData.textTheme.subtitle1,
                ),
                onTap: () {
                  //TODO contact
                },
              ),
              ListTile(
                leading: Get.isDarkMode
                    ? Image.asset("assets/images/side_menu/setting_dark.png")
                    : Image.asset("assets/images/side_menu/setting.png"),
                title: Text(
                  "Settings",
                  style: _themeData.textTheme.subtitle1,
                ),
                onTap: () {
                  //TODO Settings
                },
              ),
              ListTile(
                leading: Get.isDarkMode
                    ? Image.asset("assets/images/side_menu/helps_dark.png")
                    : Image.asset("assets/images/side_menu/helps.png"),
                title: Text(
                  "Helps & FAQs",
                  style: _themeData.textTheme.subtitle1,
                ),
                onTap: () {
                  //TODO help
                },
              ),
              addVerticalSpace(20),
              CustomIconButton(
                text: "Log Out",
                width: 150,
                onPress: () {},
                icon: Image.asset(
                  "assets/images/side_menu/Logout.png",
                  height: 30,
                  width: 30,
                ),
                style: _themeData.textTheme.button!
                    .copyWith(fontSize: 16, color: whiteColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
