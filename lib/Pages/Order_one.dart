import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../elements/Container.dart';
import '../elements/Drop down.dart';
import '../elements/simple dropdown.dart';
import 'confirm_order.dart';


class Orderdetails {
  final String orderid;
  final String from;
  final String to;
  final String prod;
  final String load;

  Orderdetails({required this.orderid, required this.from, required this.to,required this.prod,required this.load,});
}

class OrderOne extends StatefulWidget {
  const OrderOne({Key? key}) : super(key: key);

  @override
  State<OrderOne> createState() => _OrderOneState();
}

class _OrderOneState extends State<OrderOne> {
  final _orderidController = TextEditingController();

  final _fromController = TextEditingController();

  final _toController = TextEditingController();

  final _prodController = TextEditingController();

  final _loadController = TextEditingController();



  void _showSnackBarMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }


  void _submitText() {
    setState(() async {
      final orderid = _orderidController.text;

      final apiUrl = 'https://64e2ef8cbac46e480e77edd9.mockapi.io/driver_detail';


      final response = await http.post(
        Uri.parse(apiUrl),
        body: {
          'order_id': orderid
        },
      );

    });
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
                          'Order id',
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
                    child: TextField(
                      controller: _orderidController,

                    ),
                  ),
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
                    height: 300,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: HexColor('20BD67'),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: MultiSelectDropdown(

                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'From',
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
                    child: Container(height: 110, child: TextField(
                      controller: _fromController,
                    )),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'To',
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
                    child: Container(height: 110, child: TextField(
                      controller: _toController,
                    )),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'Shipping Product',
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
                    child: Container(height: 110, child: TextField(
                      controller: _prodController,
                    )),
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
                    child: Container(height: 110, child:TextField(
                      controller: _loadController,
                    )),
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
                            onPressed: _submitText,
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
                              'Next',
                              style: GoogleFonts.sora(
                                color: HexColor('FFFFFF'),
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
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
