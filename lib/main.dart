import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List image = [
    "https://cdn-icons-png.flaticon.com/512/1051/1051326.png",
    "https://cdn-icons-png.flaticon.com/512/1051/1051323.png",
    "https://cdn-icons-png.flaticon.com/512/1051/1051322.png",
    "https://cdn-icons-png.flaticon.com/512/1051/1051299.png",
    "https://cdn-icons-png.flaticon.com/512/1051/1051334.png",
    "https://cdn-icons-png.flaticon.com/512/1051/1051333.png"
  ];
  List Names = [
    "github",
    "whatsapp",
    "snapchat",
    "youtube",
    "spotify",
    "linkedin"
  ];
  @override
  Widget build(BuildContext context) {
    final title = 'Grid View';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.black,
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(image.length, (index) {
            return Center(
              child: Column(
                children: <Widget>[
                  Image.network(
                    image[index],
                    width: 200,
                    height: 137,
                  ),
                  Text(
                    '${Names[index]}',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
