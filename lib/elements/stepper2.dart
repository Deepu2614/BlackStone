import 'package:flutter/material.dart';
import 'package:another_stepper/another_stepper.dart';
import 'package:hexcolor/hexcolor.dart';

class mystepper extends StatefulWidget {
  const mystepper({Key? key}) : super(key: key);

  @override
  State<mystepper> createState() => _mystepperState();
}

class _mystepperState extends State<mystepper> {
  double progress = 1.7; // Set the progress value between 1 and 2.

  List<StepperData> stepperData = [
    StepperData(
      title: StepperText(
        "Order Placed",
        textStyle: const TextStyle(
          color: Colors.grey,
        ),
      ),
      subtitle: StepperText("Your order has been placed"),
      iconWidget: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: HexColor('20BD67'),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.check, color: Colors.white, size: 20,),
      ),
    ),
    StepperData(
      title: StepperText("Preparing"),
      subtitle: StepperText("Your order is being prepared"),
      iconWidget: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: HexColor('20BD67'),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.check, color: Colors.white, size: 20,),
      ),
    ),
    StepperData(
        title: StepperText("On the way"),
        subtitle: StepperText(
            "Our delivery executive is on the way to deliver your item"),
        iconWidget: Container(
          padding: const EdgeInsets.all(4),
          decoration:  BoxDecoration(
              color:  HexColor('BDBDBD'),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(Icons.looks_3_rounded, color: Colors.white,size: 20,),
        )),
    StepperData(
        title: StepperText("Delivered",
            textStyle: const TextStyle(color: Colors.grey)),
        iconWidget: Container(
          padding: const EdgeInsets.all(4),
          decoration:  BoxDecoration(
              color:  HexColor('BDBDBD'),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(Icons.looks_4_rounded, color: Colors.white,size: 20,),
        )),
  ];

  // Add more StepperData items as needed


  @override
  Widget build(BuildContext context) {
    int activeIndex = progress.toInt(); // Calculate the active index based on progress.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: AnotherStepper(
                stepperList: stepperData,
                stepperDirection: Axis.vertical,
                iconWidth: 30,
                iconHeight: 30,
                activeBarColor: HexColor('20BD67'),
                inActiveBarColor: Colors.grey,
                inverted: false,
                verticalGap: 50,
                activeIndex: activeIndex,
                barThickness: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

