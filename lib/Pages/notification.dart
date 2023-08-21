
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class notify extends StatefulWidget {
  const notify({Key? key}) : super(key: key);

  @override
  State<notify> createState() => _notifyState();
}

class _notifyState extends State<notify> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(automaticallyImplyLeading: false,
          backgroundColor: HexColor('FFFFFF'),
          bottom: TabBar( labelColor: HexColor('20BD67'),
            unselectedLabelColor: HexColor('5F5F5F'),
            indicatorColor: HexColor('20BD67'),

            tabs: [
              Tab(child: Text("Regular",style: GoogleFonts.sora(
                fontWeight: FontWeight.w600,
                fontSize: 19,
              ),)),
              Tab(child: Text("Alert",style: GoogleFonts.sora(
                fontWeight: FontWeight.w600,
                fontSize: 19,
              ),)),

            ],
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text('Notification',style: GoogleFonts.sora(
                color: HexColor('000000'),
                fontWeight: FontWeight.bold,
                fontSize: 22
            ),),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: TabBarView(
            children: [
              Column( mainAxisAlignment: MainAxisAlignment.start,
                children: [Row(children: [ Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text('Today ',
                    style:
                    GoogleFonts.sora(
                        color: HexColor('787878'),
                        fontWeight: FontWeight.w600,
                        fontSize: 22
                    ),),
                ),
                ],),Row(children: [ Column(mainAxisAlignment: MainAxisAlignment.start,children: [
                  Row(children: [
                    Text('Order id:  ',
                      style:
                      GoogleFonts.sora(
                          color: HexColor('000000'),
                          fontWeight: FontWeight.w600,
                          fontSize: 20
                      ),), Text('NK000',
                        style:
                        GoogleFonts.sora(
                            color: HexColor('20BD67'),
                            fontWeight: FontWeight.w600,
                            fontSize: 20
                        ),),



                  ],),
                  Row(children: [ Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Text('Container:  ',
                      style:
                      GoogleFonts.sora(
                          color: HexColor('464646'),
                          fontWeight: FontWeight.w600,
                          fontSize: 15
                      ),),
                  ), Text('NK006',
                      style:
                      GoogleFonts.sora(
                          color: HexColor('7E7E7E'),
                          fontWeight: FontWeight.w600,
                          fontSize: 15
                      ),),],),
                  Row(children: [ Padding(
                    padding: const EdgeInsets.only(right: 45.0),
                    child: Text('To:  ',
                      style:
                      GoogleFonts.sora(
                          color: HexColor('464646'),
                          fontWeight: FontWeight.w600,
                          fontSize: 15
                      ),),
                  ), Text('chennai',
                    style:
                    GoogleFonts.sora(
                        color: HexColor('7E7E7E'),
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                    ),),],),

                ],),
                  Column(children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 115.0),
                     child: Padding(
                       padding: const EdgeInsets.only(top: 20),
                       child: Image.asset('assets/tickbox.png',height: 63,width: 63,),
                     ),
                   ),
                    Padding(
                      padding: const EdgeInsets.only(left: 120.0),
                      child: Text('Reached',style:
                      GoogleFonts.sora(
                          color: HexColor('20BD67'),
                          fontWeight: FontWeight.w600,
                          fontSize: 15
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 120.0),
                      child: Text('7:00 am',style:
                      GoogleFonts.sora(
                          color: HexColor('7E7E7E'),
                          fontWeight: FontWeight.w600,
                          fontSize: 13
                      ),),
                    ),

                  ],),

                ],),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,),
                        child: Text('Last week ',
                          style:
                          GoogleFonts.sora(
                              color: HexColor('787878'),
                              fontWeight: FontWeight.w600,
                              fontSize: 22
                          ),),
                      ),
                    ],
                  ),
                  Row(children: [ Column(mainAxisAlignment: MainAxisAlignment.start,children: [
                    Row(children: [
                      Text('Order id:  ',
                        style:
                        GoogleFonts.sora(
                            color: HexColor('000000'),
                            fontWeight: FontWeight.w600,
                            fontSize: 20
                        ),), Text('NK888',
                        style:
                        GoogleFonts.sora(
                            color: HexColor('20BD67'),
                            fontWeight: FontWeight.w600,
                            fontSize: 20
                        ),),



                    ],),
                    Row(children: [ Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Text('Container:  ',
                        style:
                        GoogleFonts.sora(
                            color: HexColor('464646'),
                            fontWeight: FontWeight.w600,
                            fontSize: 15
                        ),),
                    ), Text('NK666',
                      style:
                      GoogleFonts.sora(
                          color: HexColor('7E7E7E'),
                          fontWeight: FontWeight.w600,
                          fontSize: 15
                      ),),],),
                    Row(children: [ Padding(
                      padding: const EdgeInsets.only(right: 45.0),
                      child: Text('To:  ',
                        style:
                        GoogleFonts.sora(
                            color: HexColor('464646'),
                            fontWeight: FontWeight.w600,
                            fontSize: 15
                        ),),
                    ), Text('Mumbai',
                      style:
                      GoogleFonts.sora(
                          color: HexColor('7E7E7E'),
                          fontWeight: FontWeight.w600,
                          fontSize: 15
                      ),),],),

                  ],),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 120.0),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Image.asset('assets/tickbox.png',height: 63,width: 63,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120.0),
                        child: Text('Reached',style:
                        GoogleFonts.sora(
                            color: HexColor('20BD67'),
                            fontWeight: FontWeight.w600,
                            fontSize: 15
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120.0),
                        child: Text('6:30 am',style:
                        GoogleFonts.sora(
                            color: HexColor('7E7E7E'),
                            fontWeight: FontWeight.w600,
                            fontSize: 13
                        ),),
                      ),

                    ],),

                  ],),
                  Row(children: [ Column(mainAxisAlignment: MainAxisAlignment.start,children: [
                    Row(children: [
                      Text('Order id:  ',
                        style:
                        GoogleFonts.sora(
                            color: HexColor('000000'),
                            fontWeight: FontWeight.w600,
                            fontSize: 20
                        ),), Text('NK700',
                        style:
                        GoogleFonts.sora(
                            color: HexColor('20BD67'),
                            fontWeight: FontWeight.w600,
                            fontSize: 20
                        ),),



                    ],),
                    Row(children: [ Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Text('Container:  ',
                        style:
                        GoogleFonts.sora(
                            color: HexColor('464646'),
                            fontWeight: FontWeight.w600,
                            fontSize: 15
                        ),),
                    ), Text('NK900',
                      style:
                      GoogleFonts.sora(
                          color: HexColor('7E7E7E'),
                          fontWeight: FontWeight.w600,
                          fontSize: 15
                      ),),],),
                    Row(children: [ Padding(
                      padding: const EdgeInsets.only(right: 45.0),
                      child: Text('To:  ',
                        style:
                        GoogleFonts.sora(
                            color: HexColor('464646'),
                            fontWeight: FontWeight.w600,
                            fontSize: 15
                        ),),
                    ), Text('pondy',
                      style:
                      GoogleFonts.sora(
                          color: HexColor('7E7E7E'),
                          fontWeight: FontWeight.w600,
                          fontSize: 15
                      ),),],),

                  ],),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 118.0),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Image.asset('assets/tickbox.png',height: 63,width: 63,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120.0),
                        child: Text('Reached',style:
                        GoogleFonts.sora(
                            color: HexColor('20BD67'),
                            fontWeight: FontWeight.w600,
                            fontSize: 15
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120.0),
                        child: Text('6:30 am',style:
                        GoogleFonts.sora(
                            color: HexColor('7E7E7E'),
                            fontWeight: FontWeight.w600,
                            fontSize: 13
                        ),),
                      ),

                    ],),

                  ],),


                ],),





              Column( mainAxisAlignment: MainAxisAlignment.start,
                children: [Row(children: [ Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text('Today ',
                    style:
                    GoogleFonts.sora(
                        color: HexColor('787878'),
                        fontWeight: FontWeight.w600,
                        fontSize: 22
                    ),),
                ),
                ],),Row(children: [ Column(mainAxisAlignment: MainAxisAlignment.start,children: [
                  Row(children: [
                    Text('Order id:  ',
                      style:
                      GoogleFonts.sora(
                          color: HexColor('000000'),
                          fontWeight: FontWeight.w600,
                          fontSize: 20
                      ),), Text('NK000',
                      style:
                      GoogleFonts.sora(
                          color: HexColor('20BD67'),
                          fontWeight: FontWeight.w600,
                          fontSize: 20
                      ),),



                  ],),
                  Row(children: [ Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Text('Container:  ',
                      style:
                      GoogleFonts.sora(
                          color: HexColor('464646'),
                          fontWeight: FontWeight.w600,
                          fontSize: 15
                      ),),
                  ), Text('NK006',
                    style:
                    GoogleFonts.sora(
                        color: HexColor('7E7E7E'),
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                    ),),],),
                  Row(children: [ Padding(
                    padding: const EdgeInsets.only(right: 45.0),
                    child: Text('To:  ',
                      style:
                      GoogleFonts.sora(
                          color: HexColor('464646'),
                          fontWeight: FontWeight.w600,
                          fontSize: 15
                      ),),
                  ), Text('chennai',
                    style:
                    GoogleFonts.sora(
                        color: HexColor('7E7E7E'),
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                    ),),],),

                ],),
                  Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 115.0),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Image.asset('assets/alert.png',height: 63,width: 63,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 90.0),
                      child: Text('Door opened',style:
                      GoogleFonts.sora(
                          color: HexColor('FEC803'),
                          fontWeight: FontWeight.w600,
                          fontSize: 15
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 120.0),
                      child: Text('7:00 am',style:
                      GoogleFonts.sora(
                          color: HexColor('7E7E7E'),
                          fontWeight: FontWeight.w600,
                          fontSize: 13
                      ),),
                    ),

                  ],),

                ],),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,),
                        child: Text('Last week ',
                          style:
                          GoogleFonts.sora(
                              color: HexColor('787878'),
                              fontWeight: FontWeight.w600,
                              fontSize: 22
                          ),),
                      ),
                    ],
                  ),
                  Row(children: [ Column(mainAxisAlignment: MainAxisAlignment.start,children: [
                    Row(children: [
                      Text('Order id:  ',
                        style:
                        GoogleFonts.sora(
                            color: HexColor('000000'),
                            fontWeight: FontWeight.w600,
                            fontSize: 20
                        ),), Text('NK888',
                        style:
                        GoogleFonts.sora(
                            color: HexColor('20BD67'),
                            fontWeight: FontWeight.w600,
                            fontSize: 20
                        ),),



                    ],),
                    Row(children: [ Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Text('Container:  ',
                        style:
                        GoogleFonts.sora(
                            color: HexColor('464646'),
                            fontWeight: FontWeight.w600,
                            fontSize: 15
                        ),),
                    ), Text('NK666',
                      style:
                      GoogleFonts.sora(
                          color: HexColor('7E7E7E'),
                          fontWeight: FontWeight.w600,
                          fontSize: 15
                      ),),],),
                    Row(children: [ Padding(
                      padding: const EdgeInsets.only(right: 45.0),
                      child: Text('To:  ',
                        style:
                        GoogleFonts.sora(
                            color: HexColor('464646'),
                            fontWeight: FontWeight.w600,
                            fontSize: 15
                        ),),
                    ), Text('Mumbai',
                      style:
                      GoogleFonts.sora(
                          color: HexColor('7E7E7E'),
                          fontWeight: FontWeight.w600,
                          fontSize: 15
                      ),),],),

                  ],),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 120.0),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Image.asset('assets/exit.png',height: 63,width: 63,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120.0),
                        child: Text('Reached',style:
                        GoogleFonts.sora(
                            color: HexColor('FF4444'),
                            fontWeight: FontWeight.w600,
                            fontSize: 15
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120.0),
                        child: Text('6:30 am',style:
                        GoogleFonts.sora(
                            color: HexColor('7E7E7E'),
                            fontWeight: FontWeight.w600,
                            fontSize: 13
                        ),),
                      ),

                    ],),

                  ],),
                  Row(children: [ Column(mainAxisAlignment: MainAxisAlignment.start,children: [
                    Row(children: [
                      Text('Order id:  ',
                        style:
                        GoogleFonts.sora(
                            color: HexColor('000000'),
                            fontWeight: FontWeight.w600,
                            fontSize: 20
                        ),), Text('NK700',
                        style:
                        GoogleFonts.sora(
                            color: HexColor('20BD67'),
                            fontWeight: FontWeight.w600,
                            fontSize: 20
                        ),),



                    ],),
                    Row(children: [ Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Text('Container:  ',
                        style:
                        GoogleFonts.sora(
                            color: HexColor('464646'),
                            fontWeight: FontWeight.w600,
                            fontSize: 15
                        ),),
                    ), Text('NK900',
                      style:
                      GoogleFonts.sora(
                          color: HexColor('7E7E7E'),
                          fontWeight: FontWeight.w600,
                          fontSize: 15
                      ),),],),
                    Row(children: [ Padding(
                      padding: const EdgeInsets.only(right: 45.0),
                      child: Text('To:  ',
                        style:
                        GoogleFonts.sora(
                            color: HexColor('464646'),
                            fontWeight: FontWeight.w600,
                            fontSize: 15
                        ),),
                    ), Text('pondy',
                      style:
                      GoogleFonts.sora(
                          color: HexColor('7E7E7E'),
                          fontWeight: FontWeight.w600,
                          fontSize: 15
                      ),),],),

                  ],),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 118.0),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Image.asset('assets/exit.png',height: 63,width: 63,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120.0),
                        child: Text('Reached',style:
                        GoogleFonts.sora(
                            color: HexColor('FF4444'),
                            fontWeight: FontWeight.w600,
                            fontSize: 15
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120.0),
                        child: Text('6:30 am',style:
                        GoogleFonts.sora(
                            color: HexColor('7E7E7E'),
                            fontWeight: FontWeight.w600,
                            fontSize: 13
                        ),),
                      ),

                    ],),

                  ],),


                ],),

            ],
          ),
        ),
      ),
    );

  }
}
