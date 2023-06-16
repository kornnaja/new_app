import 'dart:ui';
Color searchIcon = "#C1C1C1".toColor();
Color backgroundCampaign= "#F5F5F5".toColor();
Color meMsg = "#4B9CD3".toColor();
Color search = "#F8F8F8".toColor();
Color appBarPlace = "#F7F7F7".toColor();
Color blueColor = "#0A549A".toColor();
Color darkBlueColor = "#153C85".toColor();
Color blueGreyColor = "#3972A4".toColor();
Color yellowColor = "#FEBE10".toColor();
Color redColor = "#FF2929".toColor();
Color redColor2 = "#FA4A0C".toColor();
Color pinkRedColor = "#FA8780".toColor();
Color aquaColor = "#02DBF9".toColor();
Color textColor = "#4E4E4E".toColor();
Color magentaColor = "#D63D90".toColor();
Color lightGreenColor = "#7DD44D".toColor();
Color greyColor = "#A8A8A8".toColor();
Color greyColor2 = "#CDCDCD".toColor();
Color state0 = "#B0FBF6".toColor();
Color state1 = "#FFEAA9".toColor();
Color state2 = "#FBC9E8".toColor();
Color state3 = "#FFFFFF".toColor();
Color state4 = "#FFFFFF".toColor();
Color state5 = "#27BA08".toColor();
Color pastelGreenColor = "#E3FFD9".toColor();
Color pastelRedColor = "#F4CECE".toColor();

extension ColorExtension on String {
  toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}
