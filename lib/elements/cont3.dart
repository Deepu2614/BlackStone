import 'package:flutter/material.dart';

class ContainerBox3 extends StatelessWidget {
  const ContainerBox3({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.all(25),
          height: 200,
          color: Colors.black,
        ),
        Container(
          margin: EdgeInsets.all(25),
          height: 200,
          color: Colors.black,
        ),Container(
          margin: EdgeInsets.all(25),
          height: 200,
          color: Colors.black,
        ),
        Container(
          margin: EdgeInsets.all(25),
          height: 200,
          color: Colors.black,
        ),
        Container(
          margin: EdgeInsets.all(25),
          height: 200,
          color: Colors.black,
        ),
      ],
    );
  }
}
