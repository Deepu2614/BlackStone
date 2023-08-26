import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../elements/Toggle.dart';
import 'details.dart';

class DriverDetails {
  final String name;
  final String city;
  final String phoneNumber;

  DriverDetails({required this.name, required this.city, required this.phoneNumber});
}

class Ordertwo extends StatefulWidget {

  @override
  State<Ordertwo> createState() => _OrdertwoState();
}

class _OrdertwoState extends State<Ordertwo> {
  final _nameController = TextEditingController();

  final _cityController = TextEditingController();

  final _phoneController = TextEditingController();

  void _showSnackBarMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }

  Future<void> _saveDriverDetailsToApi(BuildContext context, DriverDetails driverDetails) async {
    final apiUrl = 'https://64e2ef8cbac46e480e77edd9.mockapi.io/driver_detail';

    // Validate the text fields
    if (_nameController.text.isEmpty || _cityController.text.isEmpty || _phoneController.text.isEmpty) {
      // Show error message using SnackBar if any text field is empty
      _showSnackBarMessage(context, 'Please fill all the fields');
      return; // Stop further execution
    }

    try {
      // Your API call code here...
      // (Assuming response is successful)
      final response = await http.post(
        Uri.parse(apiUrl),
        body: {
          'name': driverDetails.name,
          'city': driverDetails.city,
          'phone': driverDetails.phoneNumber,
        },
      );

      if (response.statusCode == 201) {
        // Handle the success scenario for a 201 status code
        // (Assuming the data was saved successfully on the server)
        _showSnackBarMessage(context, 'Details updated');

        // Clear the text fields after successful submission
        _nameController.clear();
        _cityController.clear();
        _phoneController.clear();

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => details(driverData: {
              'name': driverDetails.name,
              'city': driverDetails.city,
              'phone': driverDetails.phoneNumber,
            }),
          ),
        );

      } else {
        // Handle other status codes as needed
        _showSnackBarMessage(context, 'API error: ${response.statusCode}');
      }
    } catch (e) {
      // Handle connection or other errors
      _showSnackBarMessage(context, 'Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: HexColor('FFFFFF'),
          title: Text(
            'Shipments',
            style: GoogleFonts.sora(
              color: HexColor('000000'),
              fontWeight: FontWeight.w700,
              fontSize: 23,
            ),
          ),
          iconTheme: IconThemeData(
            color: Colors.black, // Change this to your desired color
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Driver details',
                        style: GoogleFonts.sora(
                          color: HexColor('20BD67'),
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Driver name',
                        style: GoogleFonts.sora(
                          color: HexColor('000000'),
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      '*',
                      style: GoogleFonts.sora(
                        color: HexColor('20BD67'),
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 90,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        hintText: "Enter driver's name",
                        filled: true,
                        fillColor: Colors.grey[200],
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.4), // Red border color when focused
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.4), // Red border color when enabled (not focused)
                          borderRadius: BorderRadius.circular(10),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.4), // Red border color when disabled
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'City',
                        style: GoogleFonts.sora(
                          color: HexColor('000000'),
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      '*',
                      style: GoogleFonts.sora(
                        color: HexColor('20BD67'),
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 90,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: TextField(
                      controller: _cityController,
                      decoration: InputDecoration(
                        hintText: 'Enter city name',
                        filled: true,
                        fillColor: Colors.grey[200],
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.4), // Red border color when focused
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.4), // Red border color when enabled (not focused)
                          borderRadius: BorderRadius.circular(10),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.4), // Red border color when disabled
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Phone number',
                        style: GoogleFonts.sora(
                          color: HexColor('000000'),
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      '*',
                      style: GoogleFonts.sora(
                        color: HexColor('20BD67'),
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 110,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: TextField(
                      controller: _phoneController,
                      decoration: InputDecoration(
                        hintText: "Enter driver's phone number",
                        filled: true,
                        fillColor: Colors.grey[200],
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.4), // Red border color when focused
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.4), // Red border color when enabled (not focused)
                          borderRadius: BorderRadius.circular(10),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.4), // Red border color when disabled
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: SizedBox(
                        height: 50,
                        width: 130,
                        child: ElevatedButton(
                          onPressed: () {
                            final driverDetails = DriverDetails(
                              name: _nameController.text,
                              city: _cityController.text,
                              phoneNumber: _phoneController.text,
                            );

                            _saveDriverDetailsToApi(context, driverDetails);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(HexColor('20BD67')),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          child: Text(
                            'Submit',
                            style: GoogleFonts.sora(
                              color: HexColor('FFFFFF'),
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
