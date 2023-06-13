import 'package:blackstone/elements/QuickActions.dart';
import 'package:blackstone/elements/variables.dart';
import 'package:blackstone/elements/Chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_charts/flutter_charts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}



class _HomeState extends State<Home> {





  ListTile StatusTile(Color clr, String status,int no){
    return ListTile(
      leading: Container(
        height: 33,
        width: 33,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: clr.withOpacity(0.10),
        ),
        child: Center(child: Text(no.toString(),style: TextStyle(color: clr,fontWeight: FontWeight.bold,fontSize: 17),)),
      ),
      title: Text(status),
      trailing: Icon(Icons.navigate_next),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: HexColor('#ffffff'),
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      backgroundColor: HexColor('#ffffff'),
      elevation: 4,
      shadowColor: HexColor('#000000').withOpacity(0.18),

      leading: Center(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Image.asset('assets/logo.png'),
        ),

      ),
      leadingWidth: 100,
      title: Text(
        'Blackstone',
        style: GoogleFonts.sora(
            color: HexColor('000000'),
            fontWeight: FontWeight.bold,
            fontSize: 22
        ),
      ),
      actions: [
        InkWell(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(child: Icon(Icons.notifications,color: black,)),
          ),
          onTap: (){
            print("Notification tapped");
          },
        ),
      ],

    ),
      body: GestureDetector(
        onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.symmetric(vertical: 15,horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: black.withOpacity(0.12),
                          blurRadius: 4,
                          spreadRadius: 0,
                          offset: Offset(0, 3),
                        )
                      ],
                      color: HexColor('#F1F0F5'),
                    ),

                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: TextField(
                          decoration: InputDecoration(

                            floatingLabelBehavior: FloatingLabelBehavior.never,
                              iconColor: HexColor('#777777'),
                              label: Text('Search for conainer'),
                             labelStyle: TextStyle(
                               color: HexColor('#777777')
                             ),

                             icon:Icon(Icons.search),
                            focusColor: HexColor('#777777'),
                            hoverColor: HexColor('#777777'),

                            border: InputBorder.none,

                          ),
                        ),
                      ),
                    ),
                  ),
                ),



              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Quick Action",
                    style:
                    GoogleFonts.sora(
                      color: HexColor('000000'),
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                        ),
                    ),

                    QuickAction()


                  ],
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child:  Text(
                      "Container Stats",
                      style:
                      GoogleFonts.sora(
                          color: HexColor('000000'),
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(bottom: 20),
                    child: Container(
                      width: double.maxFinite,
                      // height: MediaQuery.of(context).size.height*(50/100),
                      decoration: BoxDecoration(
                          color: HexColor('#ffffff'),
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

                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,

                          children: [

                            StatusTile(Colors.blueAccent, "Processing", 1),
                            StatusTile(Colors.yellow, "Departed", 5),
                            StatusTile(Colors.orange, "On Shipment", 9),
                            StatusTile(Colors.green, "Reached", 6),
                            StatusTile(Colors.redAccent, "Not Active", 4),

                          ],
                        ),

                      ),

                    ),
                  )
                ],
              ),


              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child:  Text(
                      "Quick Dashboard",
                      style:
                      GoogleFonts.sora(
                          color: HexColor('000000'),
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),
                  ),


                  Container(
                    child:  chartToRun(),
                  )


                ],
              )


            ],
          ),
          ),
        ),
      ),
    );
  }
}
