import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicapp/controllers/home_controller.dart';
import 'package:musicapp/widgets/bottom_nav.dart';
import 'package:musicapp/widgets/text_widget.dart';

class PageTwo extends GetView<HomeController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const TextWidget(
            value: 'Good',
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Color(0xff000000),
            textAlign: TextAlign.center),
        actions: [Icon(Icons.search)],
        bottom: PreferredSize(preferredSize: Size(Get.width, 20), child: const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: TextWidget(
                value: 'Morning',
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xff000000),
                textAlign: TextAlign.left),
          ),
        )),
      ),
      bottomNavigationBar: SizedBox(
        width: Get.width,
          height: 100,
          child: BottomNavWidget()),
      body: Obx(() => controller.bottomNavBodyWidget ()),
    );}

}