import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'variables.dart';

import 'package:hexcolor/hexcolor.dart';

class QuickAction extends StatefulWidget {
  const QuickAction({Key? key}) : super(key: key);

  @override
  State<QuickAction> createState() => _QuickActionState();
}

class _QuickActionState extends State<QuickAction> {


  Padding QuickActionItem(String title,Icon icon){
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: MediaQuery.of(context).size.width*(16.5/100),
        width: MediaQuery.of(context).size.width*(16.5/100),

        decoration: BoxDecoration(
            color: HexColor('#F2F2F2'),
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                  color: black.withOpacity(0.10),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(0, 4)
              )
            ]
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            icon,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: Text(
                title,
                style:
                GoogleFonts.sora(
                    color: HexColor('38393E'),
                    fontWeight: FontWeight.w700,
                    fontSize: 13
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [


          QuickActionItem("Map", Icon(Icons.map_outlined,color: HexColor('20BD67')),),
          QuickActionItem("Docs", Icon(Icons.edit_document,color: HexColor('20BD67'))),
          QuickActionItem("Truck", Icon(Icons.fire_truck_rounded,color: HexColor('20BD67'))),
          QuickActionItem("Dash", Icon(Icons.dashboard,color: HexColor('20BD67'))),
          // QuickActionItem("Add Cont.", Icon(Icons.add_box_rounded,color: HexColor('20BD67'))),







        ],
      ),
    );
  }
}
