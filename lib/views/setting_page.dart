import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/custom_widgets/customs_extensions.dart';

class SettingPage extends StatefulWidget {
  static const routeName = 'Setting_page';
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text("Settings Page").centrilizeWidget(),
      ),
    );
  }
}
