import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;

class SimpleDropdown extends StatefulWidget {
  const SimpleDropdown({Key? key}) : super(key: key);

  @override
  State<SimpleDropdown> createState() => _SimpleDropdownState();
}

class _SimpleDropdownState extends State<SimpleDropdown> {
  Future<List<dynamic>> fetchData() async {
    final res = await http.get(Uri.parse("https://64c27f8deb7fd5d6ebcff870.mockapi.io/orders"));
    if (res.statusCode == 200) {
      return jsonDecode(res.body);
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  int _value = 1; // Set the default selected value here.

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
                          child: Text(item["order_id"]),
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














class from extends StatefulWidget {
  const from({Key? key}) : super(key: key);

  @override
  State<from> createState() => _fromState();
}

class _fromState extends State<from> {
  Future<List<dynamic>> fetchData() async {
    final res = await http.get(Uri.parse("https://64c27f8deb7fd5d6ebcff870.mockapi.io/orders"));
    if (res.statusCode == 200) {
      return jsonDecode(res.body);
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  int _value = 1; // Set the default selected value here.

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
                          child: Text(item["from"]),
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



class to extends StatefulWidget {
  const to({Key? key}) : super(key: key);

  @override
  State<to> createState() => _toState();
}

class _toState extends State<to> {
  Future<List<dynamic>> fetchData() async {
    final res = await http.get(Uri.parse("https://64c27f8deb7fd5d6ebcff870.mockapi.io/orders"));
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
                          child: Text(item["to"]),
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








class shippingproduct extends StatefulWidget {
  const shippingproduct({Key? key}) : super(key: key);

  @override
  State<shippingproduct> createState() => _shippingproductState();
}

class _shippingproductState extends State<shippingproduct> {
  Future<List<dynamic>> fetchData() async {
    final res = await http.get(Uri.parse("https://64c27f8deb7fd5d6ebcff870.mockapi.io/orders"));
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
                          child: Text(item["product_info"]),
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


class weightload extends StatefulWidget {
  const weightload({Key? key}) : super(key: key);

  @override
  State<weightload> createState() => _weightloadState();
}

class _weightloadState extends State<weightload> {
  Future<List<dynamic>> fetchData() async {
    final res = await http.get(Uri.parse("https://64c27f8deb7fd5d6ebcff870.mockapi.io/orders"));
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
                          child: Text(item["load"]),
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


