import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/configrations/size_config.dart';
import 'package:flutter_localization/custom_widgets/customs_extensions.dart';

class FormData {
  static final GlobalKey<FormState> _key = GlobalKey<FormState>();
  static Form mainFrom(BuildContext context) {
    return Form(
        key: _key,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.2,
                  child: const Text(
                    "Personal Information",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ).centrilizeWidget(),
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextFormField(
                        textAlign: TextAlign.start,
                        validator: (String? val) {
                          if (val!.isEmpty) {
                            return "Required field";
                          }
                        },
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Name',
                            hintText: "Enter Name"))),
                sizeBoxWidget(SizeConfig.screenHeight! * 0.04,
                    SizeConfig.screenWidth! * 0.00),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextFormField(
                        textAlign: TextAlign.start,
                        validator: (String? val) {
                          if (val!.isEmpty) {
                            return "Required field";
                          }
                        },
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Email',
                            hintText: "Enter Email"))),
                sizeBoxWidget(SizeConfig.screenHeight! * 0.04,
                    SizeConfig.screenWidth! * 0.00),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextFormField(
                      onTap: () async {
                        FocusScope.of(context).requestFocus((FocusNode()));
                        await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(DateTime.now().year),
                            lastDate: DateTime(DateTime.now().year + 20));
                      },
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Select Date of birth")),
                ),
                sizeBoxWidget(SizeConfig.screenHeight! * 0.03,
                    SizeConfig.screenWidth! * 0.00),
                MaterialButton(
                  shape: const StadiumBorder(),
                  onPressed: () {
                    if (_key.currentState!.validate()) {}
                  },
                  height: SizeConfig.screenHeight! * 0.05,
                  color: Colors.grey,
                  elevation: 5,
                  child: const Text("Submitted information"),
                )
              ],
            ),
          ),
        ));
  }

  static Widget sizeBoxWidget(double height, double width) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
