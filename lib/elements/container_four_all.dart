import 'package:blackstone/elements/Container.dart';
import 'package:blackstone/elements/Container_four.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:easy_stepper/easy_stepper.dart';
import '../Pages/container_form.dart';
import 'variables.dart';

import 'package:hexcolor/hexcolor.dart';

class Contfourall extends StatefulWidget {
  final SelectedData? selectedData;

  const Contfourall({Key? key, this.selectedData}) : super(key: key);

  @override
  State<Contfourall> createState() => _ContfourallState();
}

class _ContfourallState extends State<Contfourall> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30,horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ContainerBox2(selectedData: widget.selectedData,),
                ContainerBox2(selectedData: widget.selectedData,),



              ],
            ),
          ),
        )
    );
  }
}

