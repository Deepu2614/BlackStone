import 'package:blackstone/Pages/Order_one.dart';
import 'package:blackstone/Pages/container_form.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../elements/ContainerAll.dart';


class Containers extends StatelessWidget {
  const Containers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor('FFFFFF'),
          bottom: TabBar( labelColor: HexColor('20BD67'),
            unselectedLabelColor: HexColor('5F5F5F'),
            indicatorColor: HexColor('20BD67'),
            isScrollable: true,
            tabs: [
              Tab(child: Text("All",style: GoogleFonts.sora(
                fontWeight: FontWeight.w600,
                fontSize: 19,
              ),)),
              Tab(child: Text("Processing",style: GoogleFonts.sora(
                fontWeight: FontWeight.w600,
                fontSize: 19,
              ),)),
              Tab(child: Text("Departed",style: GoogleFonts.sora(
                fontWeight: FontWeight.w600,
                fontSize: 19,
              ),)),
              Tab(child: Text("On shipment",style: GoogleFonts.sora(
                fontWeight: FontWeight.w600,
                fontSize: 19,
              ),)),
              Tab(child: Text("Reached",style: GoogleFonts.sora(
                fontWeight: FontWeight.w600,
                fontSize: 19,
              ),)),
              Tab(child: Text("Inactive",style: GoogleFonts.sora(
                fontWeight: FontWeight.w600,
                fontSize: 19,
              ),)),



            ],
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text('Shipments',style: GoogleFonts.sora(
                color: HexColor('000000'),
                fontWeight: FontWeight.bold,
                fontSize: 22
            ),),
          ),
        ),
        body: TabBarView(
          children: [
            ContainerAll(),
            Center(child: Text('Will')),
            Center(child: Text('you')),
            Center(child: Text('be')),
            Center(child: Text('my')),
            Center(child: Text('Girlfriend?')),


          ],
        ),

        floatingActionButton: FloatingActionButton(
          backgroundColor: HexColor('20BD67'),child: Icon(Icons.add,size: 30,),
          onPressed: () {  Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OrderOne(), // Replace AnotherPage with your desired page
            ),
          ); },),
      ),
    );
  }
}
