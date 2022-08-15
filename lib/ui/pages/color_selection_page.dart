import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

import '../../utils/color_utils.dart';
import '../widgets/color_palette.dart';

class ColorSelectionPage extends StatelessWidget {
  const ColorSelectionPage({Key? key}) : super(key: key);

  void showDialog() {
    Get.dialog(const AlertDialog(
      title: Text('Flutter'),
      content: Text('Dialog'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Color palette app'),
          actions: [
            IconButton(onPressed: showDialog, icon: Icon(Icons.info_outline))
          ],
        ),
        // https://colorhunt.co/
        body: (Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ColorPalette(
                  baseColor: '293462', 
                  baseColor1: '1CD6CE',
                  baseColor2: 'FEDB39',
                  baseColor3: 'D61C4E', 
                  callback: showColor
                ),
                ColorPalette(
                  baseColor: '42032C',
                  baseColor1: 'D36B00',
                  baseColor2: 'E6D2AA',
                  baseColor3: 'F1EFDC',
                  callback: showColor
                ),
                ColorPalette(
                  baseColor: '100F0F',
                  baseColor1: '0F3D3E',
                  baseColor2: 'E2DCC8',
                  baseColor3: 'F1F1F1',
                  callback: showColor
                ),
                ColorPalette(
                  baseColor: 'FCE2DB',
                  baseColor1: 'FF8FB1',
                  baseColor2: 'B270A2',
                  baseColor3: '7A4495',
                  callback: showColor),
                ColorPalette(
                  baseColor: 'FEFBF6',
                  baseColor1: 'A6D1E6',
                  baseColor2: '7F5283',
                  baseColor3: '3D3C42',
                  callback: showColor),
            ],)
          )
        )));
  }

  // está es la función que será llamada con cada click a un ColorPalette
  void showColor(String value) {
    Clipboard.setData(ClipboardData(text: value));
    Get.snackbar(
      'Color palette',
      'Valor copiado',
      backgroundColor: ColorUtils.FromHex(value),
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
