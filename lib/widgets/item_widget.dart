import 'package:flutter/material.dart';
import 'package:myapp/models/catalog.dart';

// ignore: use_key_in_widget_constructors
class ItemWidegt extends StatelessWidget {
  final Item item;

  const ItemWidegt({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("Item Pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}"),
      ),
    );
  }
}
