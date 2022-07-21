import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:web_flutter/constants/style.dart';
import 'package:web_flutter/routing/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = OverViewPageRoute.obs;
  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) {
      hoverItem.value = itemName;
    }
  }

  isActive(String itemName) => activeItem.value == itemName;
  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case OverViewPageRoute:
        return _customIcon(Icons.trading_up, itemName);

      case DriversPageRoute:
        return _customIcon(Icons.drive_eta, itemName);

      case ClientPageRoute:
        return _customIcon(Icons.people_alt_outlined, itemName);

      case AuthenticationPageRoute:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName))
      return Icon(
        icon,
        size: 22,
        color: darken,
      );

    return Icon(
      icon,
      color: isHovering(itemName) ? darken : lightGrey,
    );
  }
}
