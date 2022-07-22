import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:web_flutter/constants/controllers.dart';
import 'package:web_flutter/constants/style.dart';
import 'package:web_flutter/widgets/custom_text.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;

  const HorizontalMenuItem({Key? key, this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return InkWell(
        onTap: onTap,
        onHover: (value) {
          value ?
          menuController.onHover(itemName): menuController.onHover("not hovering")
        },
        
        child: Obx(()=> Container(
          color: menuController.isHovering(itemName) ? lightGrey.withOpacity(.1) : Colors.transparent,
          child: Row(children: [
            Visibility(visible: menuController.isHovering(itemName) || menuController.isActive(itemName),
            child: Container(width: 6, height: 40, color: darken,),
            maintainSize: true, maintainState: true, maintainAnimation: true,),
            SizedBox(width: _width/80),
            Padding(padding: EdgeInsets.all(16),),
            if(!menuController.isActive(itemName)){
              Flexible(child: CustomText(text: itemName, color: menuController.isHovering(itemName) ? darken : lightGrey,),)
              else
              Flexible(child: child: CustomText(text:itemName, color: darken, size:18, weight: FontWeight.bold))
            }
          ]),
        )));
  }
}
