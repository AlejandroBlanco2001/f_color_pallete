import 'package:flutter/material.dart';
import '../../utils/color_utils.dart';

class ColorPalette extends StatelessWidget {
  const ColorPalette({
    Key? key,
    // así se reciben en el constructor, por ejemplo
    //required this.baseColor,
    required this.baseColor,
    required this.baseColor1,
    required this.baseColor2,
    required this.baseColor3,
    required this.callback
  }) : super(key: key);

  // atributos de la clase, por ejemplo
  //final String baseColor;
  final String baseColor, baseColor1,baseColor2,baseColor3;

  // también se puede tener como un atributo un callback, necesiario ya que es un
  // widget sin estado, por ejemplo
  //final Function(String) callback;
final Function(String) callback;

  @override
  Widget build(BuildContext context) {
    // padding para crear espacio alrededor del widget
    return Padding(
      padding: const EdgeInsets.all(9.0),
      // vamos a mostrar los elementos en un row
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: GestureDetector(
              onTap: () => callback(baseColor),
              child: Container(
                height: 100, color: ColorUtils.FromHex(baseColor)))),
          Expanded(
            flex: 3,
            child: GestureDetector(
              onTap: () => callback(baseColor1),
              child: Container(
                height: 100, color: ColorUtils.FromHex(baseColor1)))),
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: () => callback(baseColor2),
              child: Container(
                height: 100, color: ColorUtils.FromHex(baseColor2)))),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () => callback(baseColor3),
              child: Container(
                height: 100, color: ColorUtils.FromHex(baseColor3)))),
        ],
      )
    );
  }
}
