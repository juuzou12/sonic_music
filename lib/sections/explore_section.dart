import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:musicapp/controllers/home_controller.dart';
import 'package:musicapp/widgets/text_widget.dart';

import '../widgets/slider.dart';

class ExploreSection extends GetView<HomeController>{
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(

          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color(0XffFFEAC9),
                  borderRadius: BorderRadius.circular(25.0),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Icon(Icons.icecream),
                  ),
                  title: TextWidget(
                      value: 'How to raise our cactus',
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color:  Color(0xff000000),
                      textAlign: TextAlign.start),
                  subtitle: TextWidget(
                      value: 'How to maintain a healthy and\n happy cactus',
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color:  Color(0xff707070),
                      textAlign: TextAlign.start),
                ),
              ),

            ),
            const SizedBox(height: 20,),
            Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: controller.cardCategories.map((e) => InkWell(
                onTap: (){
                  controller.currentCardCategory.value=e;
                },
                child: TextWidget(
                    value:e,
                    fontSize: 14,
                    fontWeight: controller.currentCardCategory.value==e? FontWeight.bold:FontWeight.w200,
                    color:  const Color(0xff000000),
                    textAlign: TextAlign.start),
              )).toList(),
            )),
            SliderWidget()
          ],
        ),
      ),
      onHorizontalDragEnd: (DragEndDetails details){
        print("--------------------------${details.velocity.pixelsPerSecond.dx}--------------------------------------");
      },
    );
  }

}