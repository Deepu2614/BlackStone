import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(
      elevation: 2,
      backgroundColor: HexColor('FFFFFF'),
      title: Text('Profile',style: GoogleFonts.sora(
          color: HexColor('000000'),
          fontWeight: FontWeight.w700,
          fontSize: 23
      ),),

    ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Row(
              mainAxisAlignment:MainAxisAlignment.center, children: [Padding(
                padding: const EdgeInsets.only(bottom: 8.0,top: 35),
                child: Container( decoration: BoxDecoration(
                  color: HexColor('E4F7ED'),
                  borderRadius: BorderRadius.circular(15.0), // Adjust the radius as per your preference
                ) ,height:MediaQuery.of(context).size.height / 8,width: MediaQuery.of(context).size.width * 0.9,

            child: Row( mainAxisAlignment:MainAxisAlignment.start,
              children: [
               Padding(
                 padding: const EdgeInsets.only(left: 17),
                 child: Image.asset('assets/profile.png',height: 80,width: 80,),
               ),
                Column( mainAxisAlignment: MainAxisAlignment.center,
                  children: [Row( mainAxisAlignment: MainAxisAlignment.start,
                    children: [Container(
                      child: Text('Admin',style: GoogleFonts.sora(
                          color: HexColor('000000'),
                          fontWeight: FontWeight.bold,
                          fontSize: 22
                      ),),
                    )],),SizedBox(height: 4,),Row(mainAxisAlignment: MainAxisAlignment.start,children: [Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text('Ramesh Kumar',style: GoogleFonts.sora(
                        color: HexColor('7E7E7E'),
                        fontWeight: FontWeight.w600
                        ,
                        fontSize: 16
                      ),
                      ),

                    ),
                  ],)
                  ],),
                ],
               ),
                ),
              ),
            ],),
          Row(children: [Padding(
            padding: const EdgeInsets.only(bottom: 18.0,top: 8),
            child: Text('Easy access',style: GoogleFonts.sora(
                color: HexColor('8A8A8A'),
                fontWeight: FontWeight.w600,
                fontSize: 22
            ),

            ),
          ),

          ],),

              Row(children: [

                Icon(Icons.add,color: HexColor('20BD67'),size: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Dashboard',style: GoogleFonts.sora(
                      color: HexColor('000000'),
                      fontWeight: FontWeight.w500,
                      fontSize: 22
                  ),),
                )
              ],),
            SizedBox(height: 20,),

              Row(children: [

                Icon(Icons.people_alt,color: HexColor('20BD67'),size: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Customers',style: GoogleFonts.sora(
                      color: HexColor('000000'),
                      fontWeight: FontWeight.w500,
                      fontSize: 22
                  ),),
                )
              ],),


              SizedBox(height: 20,),


              Row(children: [

                Icon(Icons.history,color: HexColor('20BD67'),size: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Shipment history',style: GoogleFonts.sora(
                      color: HexColor('000000'),
                      fontWeight: FontWeight.w500,
                      fontSize: 22
                  ),),
                )
              ],),
              SizedBox(height: 20,),

              Row(children: [

                Icon(Icons.person_outline,color: HexColor('20BD67'),size: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Driver list',style: GoogleFonts.sora(
                      color: HexColor('000000'),
                      fontWeight: FontWeight.w500,
                      fontSize: 22
                  ),),
                )
              ],),
              SizedBox(height: 20,),

              Row(children: [

                Icon(Icons.directions_bus,color: HexColor('20BD67'),size: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Container list',style: GoogleFonts.sora(
                      color: HexColor('000000'),
                      fontWeight: FontWeight.w500,
                      fontSize: 22
                  ),),
                )
              ],),
              SizedBox(height: 20,),
              Row(children: [

                Icon(Icons.location_pin,color: HexColor('20BD67'),size: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Map',style: GoogleFonts.sora(
                      color: HexColor('000000'),
                      fontWeight: FontWeight.w500,
                      fontSize: 22
                  ),),
                )
              ],),
              SizedBox(height: 15,),

              Divider(height: 10,thickness: 2,color: HexColor('D9D9D9')),

              Row(children: [Padding(
                padding: const EdgeInsets.only(bottom: 18.0,top: 8),
                child: Text('Services',style: GoogleFonts.sora(
                    color: HexColor('8A8A8A'),
                    fontWeight: FontWeight.w600,
                    fontSize: 22
                ),

                ),
              ),

              ],),
              SizedBox(height: 10,),

              Row(children: [

                Icon(Icons.padding_outlined,color: HexColor('20BD67'),size: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Privacy policy',style: GoogleFonts.sora(
                      color: HexColor('000000'),
                      fontWeight: FontWeight.w500,
                      fontSize: 22
                  ),),
                )
              ],),
              SizedBox(height: 20,),

              Row(children: [

                Icon(Icons.info_outline,color: HexColor('20BD67'),size: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('About blackstone',style: GoogleFonts.sora(
                      color: HexColor('000000'),
                      fontWeight: FontWeight.w500,
                      fontSize: 22
                  ),),
                )
              ],),
              SizedBox(height: 20,),
              Row(children: [

                Icon(Icons.login_outlined,color: HexColor('20BD67'),size: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Logout',style: GoogleFonts.sora(
                      color: HexColor('000000'),
                      fontWeight: FontWeight.w500,
                      fontSize: 22
                  ),),
                )
              ],),



              SizedBox(height: 20,),


            ],),
        ),
      ),
    );
  }
}
