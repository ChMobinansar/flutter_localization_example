import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_localization/configrations/size_config.dart';
import 'package:flutter_localization/contstants/app_langauage_list.dart';
import '../custom_widgets/custom_drawer.dart';
import 'package:flutter_localization/custom_widgets/customs_extensions.dart';

import '../custom_widgets/custom_form.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'Home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _advancedDrawerController = AdvancedDrawerController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return AdvancedDrawer(
        backdropColor: Colors.blueGrey,
        controller: _advancedDrawerController,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        animateChildDecoration: true,
        rtlOpening: false,
        // openScale: 1.0,
        disabledGestures: false,
        childDecoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        drawer: CustomDrawer.drawerListItem(context),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('HomePage').centrilizeWidget(),
            leading: appbarIconButton(),
            elevation: 0,
            actions: <Widget>[
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: DropdownButton2(
                  onChanged: (Language? language) {
                    _changeLangauge(language!);
                  },
                  underline: const SizedBox(),
                  icon: Icon(Icons.language,
                      color: Colors.white,
                      size: SizeConfig.screenHeight! * 0.04),
                  items: Language.langaugeType()
                      .map<DropdownMenuItem<Language>>((item) =>
                          DropdownMenuItem(
                            value: item,
                            child: SingleChildScrollView(
                                child: Wrap(
                              spacing: 20.0, // gap between adjacent chips
                              runSpacing: 4.0, // gap between lines
                              direction: Axis.horizontal,
                              children: <Widget>[
                                Text(
                                  item.flag!,
                                  style: TextStyle(
                                    fontSize: SizeConfig.screenHeight! * 0.02,
                                  ),
                                ),
                                SizedBox(
                                  width: SizeConfig.screenWidth! * 0.02,
                                ),
                                Text(
                                  item.name!,
                                  style: TextStyle(
                                    fontSize: SizeConfig.screenHeight! * 0.02,
                                  ),
                                ),
                              ],
                            )),
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
          body: FormData.mainFrom(context),
        ));
  }

  void _changeLangauge(Language language) {
    print(language.languageCode);
  }

  void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }

  Widget appbarIconButton() {
    return IconButton(
      onPressed: _handleMenuButtonPressed,
      icon: ValueListenableBuilder<AdvancedDrawerValue>(
        valueListenable: _advancedDrawerController,
        builder: (_, value, __) {
          return AnimatedSwitcher(
            duration: Duration(milliseconds: 250),
            child: Icon(
              value.visible ? Icons.clear : Icons.menu,
              key: ValueKey<bool>(value.visible),
            ),
          );
        },
      ),
    );
  }
}
