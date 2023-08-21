import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;

import '../Pages/container_form.dart';

class simpledropdown2 extends StatefulWidget {






  @override
  State<simpledropdown2> createState() => _simpledropdown2State();
}

class _simpledropdown2State extends State<simpledropdown2> {
  Future<List<dynamic>> fetchData() async {
    final res = await http.get(Uri.parse("https://64c27f8deb7fd5d6ebcff870.mockapi.io/containers"));
    if (res.statusCode == 200) {
      return jsonDecode(res.body);
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: fetchData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // While data is being fetched, display a loading indicator.
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          // If there's an error, display an error message.
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          // If data is available, build the DropdownButton.
          List<dynamic> data = snapshot.data!;

          return Row(
            children: [
              Container(
                width: 315,height: 60,
                padding: EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  border: Border.all(color: HexColor('20BD67'), width: 2),
                  borderRadius: BorderRadius.circular(10),
                  color: HexColor('F2F2F2'),
                ),
                child: Center(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      isDense: true,
                      items: data.asMap().entries.map((entry) {
                        int index = entry.key;
                        dynamic item = entry.value;
                        return DropdownMenuItem(
                          child: Text(item["container_no"] ?? "N/A"),
                          value: index + 1, // Use the index + 1 as a unique value for each item.
                        );
                      }).toList(),
                      onChanged: (v) {
                        setState(() {
                          _value = v as int; // Update the selected value.
                        });
                      },
                      value: _value, // Set the selected value.
                    ),
                  ),
                ),
              ),
            ],
          );
        }
      },
    );
  }
}








class TrackingId extends StatefulWidget {
  const TrackingId({super.key});

  @override
  State<TrackingId> createState() => _TrackingIdState();
}

class _TrackingIdState extends State<TrackingId> {
  Future<List<dynamic>> fetchData() async {
    final res = await http.get(Uri.parse("https://64c27f8deb7fd5d6ebcff870.mockapi.io/containers"));
    if (res.statusCode == 200) {
      return jsonDecode(res.body);
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  int _value = 1; //
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: fetchData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // While data is being fetched, display a loading indicator.
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          // If there's an error, display an error message.
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          // If data is available, build the DropdownButton.
          List<dynamic> data = snapshot.data!;

          return Row(
            children: [
              Container(
                width: 315,height: 60,
                padding: EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  border: Border.all(color: HexColor('20BD67'), width: 2),
                  borderRadius: BorderRadius.circular(10),
                  color: HexColor('F2F2F2'),
                ),
                child: Center(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      isDense: true,
                      items: data.asMap().entries.map((entry) {
                        int index = entry.key;
                        dynamic item = entry.value;
                        return DropdownMenuItem(
                          child: Text(item["tracking_id"]),
                          value: index + 1, // Use the index + 1 as a unique value for each item.
                        );
                      }).toList(),
                      onChanged: (v) {
                        setState(() {
                          _value = v as int; // Update the selected value.
                        });
                      },
                      value: _value, // Set the selected value.
                    ),
                  ),
                ),
              ),
            ],
          );
        }
      },
    );
  }
}










class ContainerType extends StatefulWidget {
  const ContainerType({super.key});

  @override
  State<ContainerType> createState() => _ContainerTypeState();
}

class _ContainerTypeState extends State<ContainerType> {
  Future<List<dynamic>> fetchData() async {
    final res = await http.get(Uri.parse("https://64c27f8deb7fd5d6ebcff870.mockapi.io/containers"));
    if (res.statusCode == 200) {
      return jsonDecode(res.body);
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: fetchData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // While data is being fetched, display a loading indicator.
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          // If there's an error, display an error message.
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          // If data is available, build the DropdownButton.
          List<dynamic> data = snapshot.data!;

          return Row(
            children: [
              Container(
                width: 315,height: 60,
                padding: EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  border: Border.all(color: HexColor('20BD67'), width: 2),
                  borderRadius: BorderRadius.circular(10),
                  color: HexColor('F2F2F2'),
                ),
                child: Center(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      isDense: true,
                      items: data.asMap().entries.map((entry) {
                        int index = entry.key;
                        dynamic item = entry.value;
                        return DropdownMenuItem(
                          child: Text(item["container_type"]),
                          value: index + 1, // Use the index + 1 as a unique value for each item.
                        );
                      }).toList(),
                      onChanged: (v) {
                        setState(() {
                          _value = v as int; // Update the selected value.
                        });
                      },
                      value: _value, // Set the selected value.
                    ),
                  ),
                ),
              ),
            ],
          );
        }
      },
    );
  }
}


















class weightcont extends StatefulWidget {
  const weightcont({Key? key}) : super(key: key);

  @override
  State<weightcont> createState() => _weightcontState();
}

class _weightcontState extends State<weightcont> {
  Future<List<dynamic>> fetchData() async {
    final res = await http.get(Uri.parse("https://64c27f8deb7fd5d6ebcff870.mockapi.io/containers"));
    if (res.statusCode == 200) {
      return jsonDecode(res.body);
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  int _value = 1; //




  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: fetchData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // While data is being fetched, display a loading indicator.
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          // If there's an error, display an error message.
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          // If data is available, build the DropdownButton.
          List<dynamic> data = snapshot.data!;

          return Row(
            children: [
              Container(
                width: 315,height: 60,
                padding: EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  border: Border.all(color: HexColor('20BD67'), width: 2),
                  borderRadius: BorderRadius.circular(10),
                  color: HexColor('F2F2F2'),
                ),
                child: DropdownButtonHideUnderline(
                  child: Center(
                    child: DropdownButton(
                      isDense: true,
                      items: data.asMap().entries.map((entry) {
                        int index = entry.key;
                        dynamic item = entry.value;
                        return DropdownMenuItem(
                          child: Text(item["max_load"].toString()),
                          value: index + 1, // Use the index + 1 as a unique value for each item.
                        );
                      }).toList(),
                      onChanged: (v) {
                        setState(() {
                          _value = v as int; // Update the selected value.
                        });
                      },
                      value: _value, // Set the selected value.
                    ),
                  ),
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
