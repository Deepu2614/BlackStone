import 'package:blackstone/elements/Container_four.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../elements/Container.dart';
import '../elements/Drop down.dart';
import '../elements/Simple dropdown2.dart';
import '../elements/container_four_all.dart';
import '../elements/simple dropdown.dart';
import 'Search.dart';
import 'confirm_order.dart';






class DropdownItem {
  final String id;
  final String name;

  DropdownItem({required this.id, required this.name});
}


class SelectedData {
  final String containerNumber;
  final int trackingId;
  final String containerType;
  final double weight;

  SelectedData({
    required this.containerNumber,
    required this.trackingId,
    required this.containerType,
    required this.weight,
  });
}


class Contform extends StatefulWidget {
  final bool showData;


  const Contform({Key? key, this.showData = false}) : super(key: key);

  @override
  State<Contform> createState() => _ContformState();
}

class _ContformState extends State<Contform> {
  SelectedData? selectedData;




  String containerNumber = "ABC123";
  String status = "yet to start";
  String containertype = "20ft standard";
  int trackingid = 123456789;
  int maxload = 5000;

  List<DropdownItem> selectedItems = [];


  void _saveSelectedItemsToApi(List<DropdownItem> selectedItems) async {
    final apiUrl = 'https://64c27f8deb7fd5d6ebcff870.mockapi.io/containers';

    List<Map<String, dynamic>> dataToSave =
    selectedItems.map((item) => {'id': item.id, 'name': item.name}).toList();
    selectedData = SelectedData(
      containerNumber: containerNumber,
      trackingId: trackingid,
      containerType: containertype,
      weight: maxload.toDouble(),
    );

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        body: json.encode(dataToSave),
        headers: {'Content-Type': 'application/json'},
      );
      print(response.body);
      if (response.statusCode == 201) {
        print('Data saved successfully');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Data saved successfully')),
        );


        setState(() {
          this.selectedItems = selectedItems;

        });
      } else {
        print('API error: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: HexColor('FFFFFF'),
          title: Text(
            'Shipments',
            style: GoogleFonts.sora(
              color: HexColor('000000'),
              fontWeight: FontWeight.w700,
              fontSize: 23,
            ),
          ),
          iconTheme: IconThemeData(
            color: Colors.black, // Change this to your desired color
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          'Container number',
                          style: GoogleFonts.sora(
                            color: HexColor('000000'),
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Text(
                        '*',
                        style: GoogleFonts.sora(
                          color: HexColor('20BD67'),
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 110,
                    child: simpledropdown2(),
                  ),


                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'Tracking Id',
                          style: GoogleFonts.sora(
                            color: HexColor('000000'),
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Text(
                        '*',
                        style: GoogleFonts.sora(
                          color: HexColor('20BD67'),
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child:
                    Container(height: 110,
                      child: TrackingId()),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'Container type',
                          style: GoogleFonts.sora(
                            color: HexColor('000000'),
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Text(
                        '*',
                        style: GoogleFonts.sora(
                          color: HexColor('20BD67'),
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Container(height: 110, child:  ContainerType()),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'Weight',
                          style: GoogleFonts.sora(
                            color: HexColor('000000'),
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Text(
                        '*',
                        style: GoogleFonts.sora(
                          color: HexColor('20BD67'),
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Container(height: 110, child: weightcont()),
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: SizedBox(
                          height: 50,
                          width: 100,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,

                                MaterialPageRoute(
                                  builder: (context) => Search(selectedData: selectedData,showData: true),
                                ),
                              );
                              _saveSelectedItemsToApi(selectedItems);


                            },
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all<Color>(
                                  HexColor('20BD67')),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            child: Text(
                              'Submit',
                              style: GoogleFonts.sora(
                                color: HexColor('FFFFFF'),
                                fontWeight: FontWeight.w600,
                                fontSize: 21,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
