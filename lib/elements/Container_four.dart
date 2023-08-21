import 'package:blackstone/Pages/container_form.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'variables.dart';

import 'package:hexcolor/hexcolor.dart';


class ContainerBox2 extends StatefulWidget {
  final SelectedData? selectedData;

  const ContainerBox2({Key? key, this.selectedData}) : super(key: key);

  @override
  State<ContainerBox2> createState() => _ContainerBox2State();
}

class _ContainerBox2State extends State<ContainerBox2> {
  int activeStep = 1;
  @override
  Widget build(BuildContext context) {


  return Column(
    children: [
      Container(
        // height: MediaQuery.of(context).size.width*(37/100),
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: HexColor('#ffffff'),
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                  color: HexColor('535353').withOpacity(0.10),
                  spreadRadius: 4,
                  blurRadius: 10,
                  offset: Offset(0, 1)
              ),
            ]
        ),
        child: Padding(
          padding: EdgeInsets.all(17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(  mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(

                    decoration: BoxDecoration(
                        color: HexColor('FF4444'),
                        shape: BoxShape.circle
                    ),
                    width: 7,
                    height: 7,
                  ),

                  Text(' Inactive',
                    style:
                    GoogleFonts.sora(
                        color: HexColor('FF4444'),
                        fontWeight: FontWeight.bold,
                        fontSize: 12
                    ),)
                ],
              ),



              Container(
                height: 100 ,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row( crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: HexColor('B8FFD8'),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                              )
                            ],
                            borderRadius: BorderRadius.circular(13),
                            color: HexColor('E7FFF2'),
                          ),
                          child: Center(
                              child: Icon(Icons.fire_truck,color: HexColor('20BD67'),)
                          ),
                        ), Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text('Container Name: ',
                                style:
                                GoogleFonts.sora(
                                    color: HexColor('0C1013'),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15
                                ),),
                            ),
                            Text( '${widget.selectedData?.containerNumber ?? '--'}' ,

                              style:
                              GoogleFonts.sora(
                                  color: HexColor('20BD67'),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15
                              ),)
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 10,),



                    Container(
                      height: 34,
                      child:  Column(

                        children: [
                          Container(
                            width: 270,
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
                                          child: Text('From',style:
                                          GoogleFonts.sora(
                                              color: HexColor('7E7E7E'),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 10
                                          ),),
                                        ),
                                        Icon(Icons.fire_truck_rounded,size: 12,color: HexColor('20BD67'),),
                                      ],
                                    ),

                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: HexColor('F2F2F2').withOpacity(0.5),
                                      ),
                                      padding: EdgeInsets.symmetric(vertical: 3,horizontal: 8),
                                      child: Text('Madurai',style:
                                      GoogleFonts.sora(
                                          color: HexColor('464646'),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12
                                      ),),
                                    )
                                  ],
                                ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 4.0),
                                          child: Text('To',style:
                                          GoogleFonts.sora(
                                              color: HexColor('7E7E7E'),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 10
                                          ),),
                                        ),
                                        Icon(Icons.fire_truck_rounded,size: 12,color: HexColor('20BD67'),),
                                      ],
                                    ),

                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: HexColor('F2F2F2').withOpacity(0.5),
                                      ),
                                      padding: EdgeInsets.symmetric(vertical: 3,horizontal: 8),
                                      child: Text('Chennai',style:
                                      GoogleFonts.sora(
                                          color: HexColor('464646'),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12
                                      ),),
                                    )
                                  ],
                                ),
                                Column( mainAxisAlignment: MainAxisAlignment.end,

                                  children: [
                                    Container( decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: HexColor('000000'),
                                    ),
                                      height: 30,width: 70,

                                      child: Center(
                                        child: Text('Show map',style:
                                        GoogleFonts.sora(
                                            color: HexColor('FFFFFF'),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12
                                        ),),
                                      ),
                                    ),
                                  ],
                                ),


                              ],
                            ),
                          ),


                        ],
                        // onStepReached: (index) =>
                        //     setState(() => activeStep = index),
                      ),
                    )



                  ],
                ),
              )



                ],

              ),

          ),
        ),

      SizedBox(height: 20,),
    ],
  );
} }