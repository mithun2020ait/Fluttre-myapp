// ignore_for_file: use_key_in_widget_constructors, import_of_legacy_library_into_null_safe, unused_import

import 'package:flutter/material.dart';
import 'package:myapp/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) :
  assert(catalog != null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${catalog.price}".text.bold.xl4.red800.make(),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            MyTheme.darkBluishColor,
                          ),
                          shape: MaterialStateProperty.all(StadiumBorder(),)
                        ),
                        child: "Add to cart".text.make()
                        ).wh(120, 50)
                  ],
        ).p32(),
      ),
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image)
              ).py8().h32(context).centered(),
              Expanded(
                child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                    color: Colors.white,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalog.name.text.xl4.color(MyTheme.darkBluishColor).bold.make(),
                        catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                        10.heightBox,
                        
                      ],
                    ).py64(),
                  ),
                ) 
              )
          ],
        )
      ),
    );
  }
}
