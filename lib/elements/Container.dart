import 'dart:convert';
import 'package:blackstone/Pages/details.dart';
import 'package:blackstone/elements/stepper2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:http/http.dart' as http;
import 'package:hexcolor/hexcolor.dart';

class ContainerBox extends StatefulWidget {
  @override
  _ContainerBoxState createState() => _ContainerBoxState();
}

class _ContainerBoxState extends State<ContainerBox> {
  int activeStep = 1;
  late Future<List<dynamic>> _fetchDataFuture;

  @override
  void initState() {
    super.initState();
    _fetchDataFuture = fetchData();
  }

  Future<List<dynamic>> fetchData() async {
    final res = await http.get(Uri.parse("https://64e2ef8cbac46e480e77edd9.mockapi.io/order"));
    if (res.statusCode == 200) {
      return jsonDecode(res.body);
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: _fetchDataFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // While data is being fetched, display a loading indicator.
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          // If there's an error, display an error message.
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          // If data is available, build the UI with the fetched data.
          List<dynamic> dataList = snapshot.data!;
          print(dataList);
          return ListView.builder(
            itemCount: dataList.length,
            itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: HexColor('#ffffff'),
                borderRadius: BorderRadius.circular(13),
                boxShadow: [
                  BoxShadow(
                    color: HexColor('535353').withOpacity(0.10),
                    spreadRadius: 4,
                    blurRadius: 10,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(17),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Container: ',
                              style: GoogleFonts.sora(
                                color: HexColor('0C1013'),
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              'Id: ${dataList[index]["order_id"]}',
                              style: GoogleFonts.sora(
                                color: HexColor('20BD67'),
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: HexColor('FF4444'),
                                shape: BoxShape.circle,
                              ),
                              width: 7,
                              height: 7,
                            ),
                            Text(
                              ' Inactive',
                              style: GoogleFonts.sora(
                                color: HexColor('FF4444'),
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 13),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 90,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: HexColor('B8FFD8'),
                                      blurRadius: 4,
                                      offset: Offset(0, 4),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(13),
                                  color: HexColor('E7FFF2'),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.location_on_rounded,
                                    color: HexColor('20BD67'),
                                  ),
                                ),
                              ),
                              Container(
                                height: 34,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'on map',
                                      style: GoogleFonts.sora(
                                        color: HexColor('7E7E7E'),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10,
                                      ),
                                    ),
                                    Text(
                                      'Madurai',
                                      style: GoogleFonts.sora(
                                        color: HexColor('20BD67'),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              width: 170,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right: 4.0),
                                            child: Text(
                                              'From',
                                              style: GoogleFonts.sora(
                                                color: HexColor('7E7E7E'),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 10,
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.fire_truck_rounded,
                                            size: 12,
                                            color: HexColor('20BD67'),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                          color: HexColor('F2F2F2').withOpacity(0.5),
                                        ),
                                        padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                                        child: Text(
                                          '${dataList[index]["from"]}',
                                          style: GoogleFonts.sora(
                                            color: HexColor('464646'),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right: 4.0),
                                            child: Text(
                                              'To',
                                              style: GoogleFonts.sora(
                                                color: HexColor('7E7E7E'),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 10,
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.fire_truck_rounded,
                                            size: 12,
                                            color: HexColor('20BD67'),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                          color: HexColor('F2F2F2').withOpacity(0.5),
                                        ),
                                        padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                                        child: Text(
                                          '${dataList[index]["to"]}',
                                          style: GoogleFonts.sora(
                                            color: HexColor('464646'),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 40,
                              width: 160,
                              child: EasyStepper(
                                activeStep: activeStep,
                                lineThickness: 1,
                                lineLength: 38,
                                lineSpace: 0,
                                lineType: LineType.normal,
                                defaultLineColor: Colors.grey,
                                finishedLineColor: Colors.green,
                                activeStepTextColor: Colors.black87,
                                finishedStepTextColor: Colors.black87,
                                internalPadding: 0,
                                showLoadingAnimation: false,
                                stepRadius: 3,
                                showStepBorder: false,
                                lineDotRadius: 0.5,
                                steps: [
                                  EasyStep(
                                    customStep: CircleAvatar(
                                      radius: 3,
                                      backgroundColor: Colors.grey,
                                      child: CircleAvatar(
                                        radius: 5,
                                        backgroundColor:
                                        activeStep >= 0 ? Colors.green : Colors.grey,
                                      ),
                                    ),
                                    title: '',
                                  ),
                                  EasyStep(
                                    customStep: CircleAvatar(
                                      radius: 3,
                                      backgroundColor: Colors.green,
                                      child: CircleAvatar(
                                        radius: 5,
                                        backgroundColor:
                                        activeStep >= 1 ? Colors.green : Colors.grey,
                                      ),
                                    ),
                                    title: '',
                                    topTitle: true,
                                  ),
                                  EasyStep(
                                    customStep: CircleAvatar(
                                      radius: 3,
                                      backgroundColor: Colors.grey,
                                      child: CircleAvatar(
                                        radius: 5,
                                        backgroundColor:
                                        activeStep >= 2 ? Colors.green : Colors.grey,
                                      ),
                                    ),
                                    title: '',
                                  ),
                                  EasyStep(
                                    customStep: CircleAvatar(
                                      radius: 3,
                                      backgroundColor: Colors.grey,
                                      child: CircleAvatar(
                                        radius: 5,
                                        backgroundColor:
                                        activeStep >= 3 ? Colors.green : Colors.grey,
                                      ),
                                    ),
                                    title: '',
                                    topTitle: true,
                                  ),
                                ],
                                // onStepReached: (index) =>
                                //     setState(() => activeStep = index),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => details(driverData: {},)),
                                );
                              },
                              child: Container(
                                child: Text('Show details',style: GoogleFonts.sora(
                                  color: HexColor('7E7E7E'),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          );
        }
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Your Page")),
      body: ContainerBox(),
    ),
  ));
}
