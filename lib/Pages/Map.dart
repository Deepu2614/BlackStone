import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart'; // Import url_launcher package

class Maps extends StatefulWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  get mapController => null;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FlutterMap(
          options: MapOptions(
            center: LatLng(11.9139, 79.8145),
            zoom: 9.2,
          ),
          nonRotatedChildren: [
            RichAttributionWidget(
              attributions: [
                TextSourceAttribution(
                  'Blackstone Maps',
                  onTap: () {},
                ),
              ],
            ),
          ],
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 220, // Height of your horizontal scrolling containers
            width: MediaQuery.of(context).size.width, // Full width of the screen
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 200,// Width of your individual container

                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: HexColor('#ffffff'),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                              color: HexColor('535353').withOpacity(0.10),
                              spreadRadius: 6,
                              blurRadius: 30,
                              offset: Offset(0, 1)
                          ),
                        ]
                    ),
                    child: Column( mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Text('Container:  ',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('000000'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20
                                ),),
                            ), Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Text('NK3',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('20BD67'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20
                                ),),
                            ),
                          ],
                        ),
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [ Icon(Icons.speed,color: HexColor('787878'),),
                            Text('20Km/h',
                              style:
                              GoogleFonts.sora(
                                  color: HexColor('787878'),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14
                              ),),
                          ],
                        ),
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [ Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text('Status: ',
                            style:
                            GoogleFonts.sora(
                                color: HexColor('787878'),
                                fontWeight: FontWeight.w600,
                                fontSize: 19
                            ),),
                          ),

                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('Moving',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('FF753A'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),
                            ),
                          ],),

                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          Column(children: [ Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text('From',
                              style:
                              GoogleFonts.sora(
                                  color: HexColor('787878'),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19
                              ),),
                          ),
                            Text('Chennai',
                              style:
                              GoogleFonts.sora(
                                  color: HexColor('575757'),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19
                              ),),

                          ],),

                            Column(children: [ Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('To',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('787878'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),
                            ),
                              Text('Mumbai',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('575757'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),

                            ],),

                        ],),

                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 13.0),
                            child: Container(height: 38,width: 100,
                              decoration: BoxDecoration(
                                color: HexColor('000000'),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      color: HexColor('535353').withOpacity(0.10),
                                      spreadRadius: 6,
                                      blurRadius: 30,
                                      offset: Offset(0, 1)
                                  ),
                                ]
                            ),child:  Center(
                              child: Text('Show map',
                                    style:
                                    GoogleFonts.sora(
                                        color: HexColor('FFFFFF'),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15
                                    ),),
                            ),),
                          ),
                        ],),
                    ],),

                  ),
                  Container(
                    width: 200,// Width of your individual container

                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: HexColor('#ffffff'),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                              color: HexColor('535353').withOpacity(0.10),
                              spreadRadius: 6,
                              blurRadius: 30,
                              offset: Offset(0, 1)
                          ),
                        ]
                    ),
                    child: Column( mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Text('Container:  ',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('000000'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20
                                ),),
                            ), Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Text('NK8 ',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('20BD67'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20
                                ),),
                            ),
                          ],
                        ),
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [ Icon(Icons.speed,color: HexColor('787878'),),
                            Text('50Km/h',
                              style:
                              GoogleFonts.sora(
                                  color: HexColor('787878'),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14
                              ),),
                          ],
                        ),
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [ Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text('Status: ',
                              style:
                              GoogleFonts.sora(
                                  color: HexColor('787878'),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19
                              ),),
                          ),

                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('Moving',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('FF753A'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),
                            ),
                          ],),

                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(children: [ Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('From',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('787878'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),
                            ),
                              Text('Pondy',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('575757'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),

                            ],),

                            Column(children: [ Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('To',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('787878'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),
                            ),
                              Text('Mahay',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('575757'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),

                            ],),

                          ],),

                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 13.0),
                              child: Container(height: 38,width: 100,
                                decoration: BoxDecoration(
                                    color: HexColor('000000'),
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          color: HexColor('535353').withOpacity(0.10),
                                          spreadRadius: 6,
                                          blurRadius: 30,
                                          offset: Offset(0, 1)
                                      ),
                                    ]
                                ),child:  Center(
                                  child: Text('Show map',
                                    style:
                                    GoogleFonts.sora(
                                        color: HexColor('FFFFFF'),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15
                                    ),),
                                ),),
                            ),
                          ],),
                      ],),





                  ),
                  Container(
                    width: 200,// Width of your individual container

                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: HexColor('#ffffff'),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                              color: HexColor('535353').withOpacity(0.10),
                              spreadRadius: 6,
                              blurRadius: 30,
                              offset: Offset(0, 1)
                          ),
                        ]
                    ),
                    child: Column( mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Text('Container:  ',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('000000'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20
                                ),),
                            ), Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Text('NK7',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('20BD67'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20
                                ),),
                            ),
                          ],
                        ),
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [ Icon(Icons.speed,color: HexColor('787878'),),
                            Text('60Km/h',
                              style:
                              GoogleFonts.sora(
                                  color: HexColor('787878'),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14
                              ),),
                          ],
                        ),
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [ Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text('Status: ',
                              style:
                              GoogleFonts.sora(
                                  color: HexColor('787878'),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19
                              ),),
                          ),

                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('Moving',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('FF753A'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),
                            ),
                          ],),

                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(children: [ Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('From',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('787878'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),
                            ),
                              Text('Yanam',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('575757'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),

                            ],),

                            Column(children: [ Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('To',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('787878'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),
                            ),
                              Text('Kolkata',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('575757'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),

                            ],),

                          ],),

                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 13.0),
                              child: Container(height: 38,width: 100,
                                decoration: BoxDecoration(
                                    color: HexColor('000000'),
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          color: HexColor('535353').withOpacity(0.10),
                                          spreadRadius: 6,
                                          blurRadius: 30,
                                          offset: Offset(0, 1)
                                      ),
                                    ]
                                ),child:  Center(
                                  child: Text('Show map',
                                    style:
                                    GoogleFonts.sora(
                                        color: HexColor('FFFFFF'),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15
                                    ),),
                                ),),
                            ),
                          ],),
                      ],),





                  ),
                  Container(
                    width: 200,// Width of your individual container

                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: HexColor('#ffffff'),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                              color: HexColor('535353').withOpacity(0.10),
                              spreadRadius: 6,
                              blurRadius: 30,
                              offset: Offset(0, 1)
                          ),
                        ]
                    ),
                    child: Column( mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Text('Container:  ',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('000000'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20
                                ),),
                            ), Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Text('NK6',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('20BD67'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20
                                ),),
                            ),
                          ],
                        ),
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [ Icon(Icons.speed,color: HexColor('787878'),),
                            Text('40Km/h',
                              style:
                              GoogleFonts.sora(
                                  color: HexColor('787878'),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14
                              ),),
                          ],
                        ),
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [ Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text('Status: ',
                              style:
                              GoogleFonts.sora(
                                  color: HexColor('787878'),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19
                              ),),
                          ),

                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('Moving',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('FF753A'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),
                            ),
                          ],),

                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(children: [ Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('From',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('787878'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),
                            ),
                              Text('Chennai',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('575757'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),

                            ],),

                            Column(children: [ Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('To',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('787878'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),
                            ),
                              Text('Kerala',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('575757'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),

                            ],),

                          ],),

                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 13.0),
                              child: Container(height: 38,width: 100,
                                decoration: BoxDecoration(
                                    color: HexColor('000000'),
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          color: HexColor('535353').withOpacity(0.10),
                                          spreadRadius: 6,
                                          blurRadius: 30,
                                          offset: Offset(0, 1)
                                      ),
                                    ]
                                ),child:  Center(
                                  child: Text('Show map',
                                    style:
                                    GoogleFonts.sora(
                                        color: HexColor('FFFFFF'),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15
                                    ),),
                                ),),
                            ),
                          ],),
                      ],),





                  ),
                  Container(
                    width: 200,// Width of your individual container

                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: HexColor('#ffffff'),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                              color: HexColor('535353').withOpacity(0.10),
                              spreadRadius: 6,
                              blurRadius: 30,
                              offset: Offset(0, 1)
                          ),
                        ]
                    ),
                    child: Column( mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Text('Container:  ',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('000000'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20
                                ),),
                            ), Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Text('NK5',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('20BD67'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20
                                ),),
                            ),
                          ],
                        ),
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [ Icon(Icons.speed,color: HexColor('787878'),),
                            Text('60Km/h',
                              style:
                              GoogleFonts.sora(
                                  color: HexColor('787878'),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14
                              ),),
                          ],
                        ),
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [ Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text('Status: ',
                              style:
                              GoogleFonts.sora(
                                  color: HexColor('787878'),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19
                              ),),
                          ),

                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('Moving',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('FF753A'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),
                            ),
                          ],),

                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(children: [ Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('From',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('787878'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),
                            ),
                              Text('Mumbai',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('575757'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),

                            ],),

                            Column(children: [ Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('To',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('787878'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),
                            ),
                              Text('Delhi',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('575757'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),

                            ],),

                          ],),

                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 13.0),
                              child: Container(height: 38,width: 100,
                                decoration: BoxDecoration(
                                    color: HexColor('000000'),
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          color: HexColor('535353').withOpacity(0.10),
                                          spreadRadius: 6,
                                          blurRadius: 30,
                                          offset: Offset(0, 1)
                                      ),
                                    ]
                                ),child:  Center(
                                  child: Text('Show map',
                                    style:
                                    GoogleFonts.sora(
                                        color: HexColor('FFFFFF'),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15
                                    ),),
                                ),),
                            ),
                          ],),
                      ],),





                  ),
                  Container(
                    width: 200,// Width of your individual container

                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: HexColor('#ffffff'),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                              color: HexColor('535353').withOpacity(0.10),
                              spreadRadius: 6,
                              blurRadius: 30,
                              offset: Offset(0, 1)
                          ),
                        ]
                    ),
                    child: Column( mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Text('Container:  ',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('000000'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20
                                ),),
                            ), Padding(
                              padding: const EdgeInsets.only(top: 14),
                              child: Text('NK4',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('20BD67'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20
                                ),),
                            ),
                          ],
                        ),
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [ Icon(Icons.speed,color: HexColor('787878'),),
                            Text('50Km/h',
                              style:
                              GoogleFonts.sora(
                                  color: HexColor('787878'),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14
                              ),),
                          ],
                        ),
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [ Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text('Status: ',
                              style:
                              GoogleFonts.sora(
                                  color: HexColor('787878'),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19
                              ),),
                          ),

                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('Moving',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('FF753A'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),
                            ),
                          ],),

                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(children: [ Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('From',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('787878'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),
                            ),
                              Text('Pondy',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('575757'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),

                            ],),

                            Column(children: [ Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text('To',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('787878'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),
                            ),
                              Text('Chennai',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('575757'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19
                                ),),

                            ],),

                          ],),

                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 13.0),
                              child: Container(height: 38,width: 100,
                                decoration: BoxDecoration(
                                    color: HexColor('000000'),
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                          color: HexColor('535353').withOpacity(0.10),
                                          spreadRadius: 6,
                                          blurRadius: 30,
                                          offset: Offset(0, 1)
                                      ),
                                    ]
                                ),child:  Center(
                                  child: Text('Show map',
                                    style:
                                    GoogleFonts.sora(
                                        color: HexColor('FFFFFF'),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15
                                    ),),
                                ),),
                            ),
                          ],),
                      ],),





                  ),
                  // Add more containers as needed
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
