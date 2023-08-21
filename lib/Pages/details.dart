import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../elements/Dum Dropdown.dart';
import '../elements/stepper2.dart';

class details extends StatefulWidget {
  final Map<String, dynamic> driverData;
  const details({Key? key, required this.driverData}) : super(key: key);


  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  late Map<String, dynamic> driverData;



  @override
  void initState() {
    super.initState();
    driverData = widget.driverData;
  }

  Future<void> fetchAndSetDriverDetails() async {
    final apiUrl = 'https://64e2ef8cbac46e480e77edd9.mockapi.io/driver_detail';
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      setState(() {
        driverData = json.decode(response.body);
      });
      print('Driver Data: $driverData');
    } else {
      print('Failed to fetch driver details: ${response.statusCode}');
      print('Response body: ${response.body}');
      // Handle the error appropriately (e.g., show an error message to the user)
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: HexColor('FFFFFF'),
        title: Text(
          'Order info',
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

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(children: [
                Column(  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 20),
                      child: Text('Order id',style: GoogleFonts.sora(
                        color: HexColor('7E7E7E'),
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 1,),
                      child: Text('NHK2345',style: GoogleFonts.sora(
                        color: HexColor('000000'),
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),),
                    ),



                  ],
                ),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 10),
                    child: Text('Container',style: GoogleFonts.sora(
                      color: HexColor('7E7E7E'),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),),
                  ),

                ],),

                Container(height:150, width:150,child: DropdownExample()),


              ],),
              Divider(height: 2,thickness: 2,),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text('Trip status',style: GoogleFonts.sora(
                  color: HexColor('7E7E7E'),
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text('Yet to start',style: GoogleFonts.sora(
                  color: HexColor('FF4444'),
                  fontWeight: FontWeight.w600,
                  fontSize: 19,
                ),),
              ),
              Container(height:550,width:400,child: mystepper()),
              Divider(height: 2,thickness: 2,),
              SizedBox(height: 10,),
              Row( mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text('Driver details',style: GoogleFonts.sora(
                      color: HexColor('20BE68'),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),),
                  ),

                ],
              ),
              Row(children: [Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(height: MediaQuery.of(context).size.height * 0.2,width:MediaQuery.of(context).size.width *0.92,decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(children: [
                      Column(mainAxisAlignment:MainAxisAlignment.center, children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset('assets/propic.png',height: 75,width: 75,),
                        )
                      ],),
                      Column(mainAxisAlignment:MainAxisAlignment.center, children: [
                        Column(children: [
                          Row(
                            children: [ Container(child: Column( crossAxisAlignment: CrossAxisAlignment.start ,children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Container(width: 150,
                                  child: Text('${driverData['name'] ?? '--'}',softWrap: true,style: GoogleFonts.sora(
                                    color: HexColor('000000'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19,
                                  ), textAlign: TextAlign.left,),
                                ),

                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:3.0,left: 9),
                                child: Container(width: 150,
                                  child: Text( '${driverData['city'] ?? '--'}',softWrap: true,style: GoogleFonts.sora(
                                    color: HexColor('575757'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  ),),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top:6.0,left: 9),
                                    child: Text('3.0',style: GoogleFonts.sora(
                                      color: HexColor('000000'),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    ),),
                                  ), Padding(
                                    padding: const EdgeInsets.only(top:6.0,),
                                    child: Container(
                                      child: Row(children: [
                                        Icon(Icons.star,size: 17,color: HexColor('FFCA42'),),
                                        Icon(Icons.star,size: 17,color: HexColor('FFCA42'),),
                                        Icon(Icons.star,size: 17,color: HexColor('FFCA42'),),
                                        Icon(Icons.star,size: 17,color: HexColor('8A8A8A'),),
                                        Icon(Icons.star,size: 17,color: HexColor('8A8A8A'),),

                                      ],),
                                    ),
                                  )

                                ],
                              ),

                            ],),)


                            ],
                          ),


                        ],)
                      ],),
                      Column( crossAxisAlignment: CrossAxisAlignment.end ,
                        children: [Row( crossAxisAlignment: CrossAxisAlignment.end ,
                        children: [Padding(
                          padding: const EdgeInsets.only(bottom:50.0),
                          child: Container(child:Row(children: [
                            Icon(Icons.circle,size: 10,color: HexColor('FF4444') ,),
                            Text(' On duty',style: GoogleFonts.sora(
                              color: HexColor('FF4444'),
                              fontWeight: FontWeight.w600,
                              fontSize: MediaQuery.of(context).size.width /25,
                            ),),
                          ],),
                          ),
                        ),

                        ],
                      ),
                      ],),
                    ],),
                    Container(width:300,child: Divider(height: 1,thickness: 1.5,)),
                    Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Called today,02:23 AM',style: GoogleFonts.sora(
                      color: HexColor('8A8A8A'),
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),),
                        Container(height: 35,

                        child: ElevatedButton(onPressed: () async{
                            final Uri url = Uri(
                              scheme: 'tel',
                                path:  '${driverData['phone'] ?? '--'}',
                            );
                            if (await canLaunchUrl(url)){
                              await launchUrl(url);
                            } else{
                              print('cannot launch this url');
                            }
                          },



                            style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(HexColor('20BD67')),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ), child: Text('Call',style: GoogleFonts.sora(
                            color: HexColor('FFFFFF'),
                            fontWeight: FontWeight.w600,
                            fontSize: 18,))
                            ,),
                        ),
                    ],),
                  ],
                ),
                ),
              ),
              ],),SizedBox(height: 400,)


            ],
          ),
        ),
      ),
    );
  }
}
