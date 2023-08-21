import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:unique_simple_bar_chart/data_models.dart';
import 'package:unique_simple_bar_chart/simple_bar_chart.dart';



class SimpleBarChatScreen extends StatelessWidget {
  SimpleBarChatScreen({super.key});

  HexColor green =HexColor('20BD67');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SimpleBarChart(

          listOfHorizontalBarData: [
            HorizontalDetailsModel(
              name: 'A',
              color: green,
              size: 173,
            ),
            HorizontalDetailsModel(
              name: 'B',
              color: green,
              size: 192,
            ),
            HorizontalDetailsModel(
              name: 'C',
              color: green,
              size: 260,
            ),
            HorizontalDetailsModel(
              name: 'D',
              color: green,
              size: 189,
            ),


          ],
          verticalInterval: 100,
        ),
      ),
    );
  }
}