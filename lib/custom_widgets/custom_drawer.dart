import 'package:flutter/material.dart';
import 'package:flutter_localization/views/setting_page.dart';
import '../configrations/size_config.dart';
import '../contstants/app_style.dart';
import '../views/about_page.dart';

class CustomDrawer {
  static Widget drawerListItem(BuildContext context) {
    return SafeArea(
      child: ListTileTheme(
        textColor: Colors.white,
        iconColor: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: SizeConfig.screenWidth! * 0.36,
              height: SizeConfig.screenHeight! * 0.36,
              margin: EdgeInsets.only(
                top: SizeConfig.screenHeight! * 0.02,
              ),
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                color: Colors.black26,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/mobinprofile.jpg',
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, AboutPage.routeName);
              },
              leading: Icon(Icons.info),
              title: Text('About us', style: AppStyle.kTextFormFiledStyle),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, SettingPage.routeName);
              },
              leading: const Icon(Icons.settings),
              title: Text('Settings', style: AppStyle.kTextFormFiledStyle),
            ),
            const Spacer(),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white54,
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 16.0,
                ),
                child: const Text('Terms of Service | Privacy Policy'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
