import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';


class ToggleButtonPage extends StatefulWidget {
  @override
  _ToggleButtonPageState createState() => _ToggleButtonPageState();
}

class _ToggleButtonPageState extends State<ToggleButtonPage> {
  List<bool> _isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: ToggleButtons(
          renderBorder: true,
          borderColor: HexColor('CBCBCB'),
          borderWidth: 1.5,
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          selectedBorderColor: HexColor('CBCBCB'),
          selectedColor: Colors.white ,
          fillColor: HexColor('20BE68'),
          isSelected: _isSelected,
          onPressed: (index) {
            setState(() {
              for (int i = 0; i < _isSelected.length; i++) {
                _isSelected[i] = i == index;
              }
            });
          },
          children: [
            // Wrap each icon with ColorFiltered to change the color when selected
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.white,
                _isSelected[0] ? BlendMode.srcIn : BlendMode.dst,
              ),
              child:Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('KJIJ88',style: GoogleFonts.sora(
                    color: HexColor('000000'),
                    fontWeight: FontWeight.w600,
                    fontSize: 20
                ),),
              ),
            ),
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.white,
                _isSelected[1] ? BlendMode.srcIn : BlendMode.dst,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('KJIJ88',style: GoogleFonts.sora(
                    color: HexColor('000000'),
                    fontWeight: FontWeight.w600,
                    fontSize: 20
                ),),
              ),
            ),
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.white,
                _isSelected[2] ? BlendMode.srcIn : BlendMode.dst,
              ),
              child:Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('KJIJ88',style: GoogleFonts.sora(
                    color: HexColor('000000'),
                    fontWeight: FontWeight.w600,
                    fontSize: 20
                ),),
              ),
            ),
          ],


        ),
      ),
    );
  }
}
