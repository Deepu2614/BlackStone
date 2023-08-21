import 'package:blackstone/elements/Container.dart';
import 'package:blackstone/elements/Container_four.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'cont3.dart';
import 'variables.dart';

import 'package:hexcolor/hexcolor.dart';

class ContainerAll extends StatefulWidget {
  const ContainerAll({Key? key}) : super(key: key);

  @override
  State<ContainerAll> createState() => _ContainerAllState();
}

class _ContainerAllState extends State<ContainerAll> {







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainerBox()
    );
  }
}

