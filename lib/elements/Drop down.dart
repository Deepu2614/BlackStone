import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;
import 'package:multi_select_flutter/multi_select_flutter.dart';

class ContainerNo {
  final int id;
  final String name;

  ContainerNo({
    required this.id,
    required this.name,
  });
}

class MultiSelectDropdown extends StatefulWidget {
  @override
  _MultiSelectDropdownState createState() => _MultiSelectDropdownState();
}

class _MultiSelectDropdownState extends State<MultiSelectDropdown> {
  static List<ContainerNo> _containerNos = [
    ContainerNo(id: 1, name: "Container 1"),
    ContainerNo(id: 2, name: "Container 2"),
    ContainerNo(id: 3, name: "Container 3"),
    ContainerNo(id: 4, name: "Container 4"),
    ContainerNo(id: 5, name: "Container 5"),
    ContainerNo(id: 6, name: "Container 6"),
    ContainerNo(id: 7, name: "Container 7"),
    ContainerNo(id: 8, name: "Container 8"),
    ContainerNo(id: 9, name: "Container 9"),
    // Add more containers as needed...
  ];

  final _items = _containerNos
      .map((containerNo) => MultiSelectItem<ContainerNo>(containerNo, containerNo.name))
      .toList();

  List<ContainerNo> _selectedContainerNos = [];

  Future<void> saveDataToApi(List<ContainerNo> selectedContainers) async {
    final apiUrl = 'https://64c27f8deb7fd5d6ebcff870.mockapi.io/orders'; // Replace with your actual API URL

    // Convert the list of selected containers to a list of container IDs
    final selectedIds = selectedContainers.map((container) => container.id).toList();

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({'containers': selectedIds}),
      );

      if (response.statusCode == 200) {
        // Data successfully saved in the API
        print('Data saved successfully!');
        // Show a success message to the user
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Data saved successfully!')),
        );
      } else {
        // Handle error or show an error message
        print('Failed to save data. Status code: ${response.statusCode}');
        // Show an error message to the user
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to save data. Status code: ${response.statusCode}')),
        );
      }
    } catch (e) {
      // Handle any network or server errors
      print('Error: $e');
      // Show an error message to the user
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error occurred while saving data.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey), // Border color
                      ),
                      child: MultiSelectBottomSheet(
                        initialChildSize: 0.7,
                        maxChildSize: 0.95,
                        title: Text("Container number"),
                        items: _items,
                        checkColor: HexColor('000000'),
                        selectedColor: HexColor('000000'),
                        unselectedColor: HexColor('000000'),
                        initialValue: _selectedContainerNos,
                        onConfirm: (values) {
                          setState(() {
                            _selectedContainerNos = values;
                          });
                          saveDataToApi(values); // Call the method to save data to the API
                        },
                      ),
                    );
                  },
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[200],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.grey), // Border color
                                ),
                                child: MultiSelectBottomSheet(
                                  initialChildSize: 0.7,
                                  maxChildSize: 0.95,
                                  title: Text("Container number"),
                                  items: _items,
                                  initialValue: _selectedContainerNos,
                                  onConfirm: (values) {
                                    setState(() {
                                      _selectedContainerNos = values;
                                    });
                                    saveDataToApi(values); // Call the method to save data to the API
                                  },
                                ),
                              );
                            },
                          );
                        },
                        readOnly: true, // Set the readOnly property to true
                        onChanged: (value) {
                          // Implement search functionality here
                        },
                        decoration: InputDecoration(
                          hintText: 'Search container number',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey), // Border color
                              ),
                              child: MultiSelectBottomSheet(
                                initialChildSize: 0.7,
                                maxChildSize: 0.95,
                                title: Text("Container number"),
                                items: _items,
                                initialValue: _selectedContainerNos,
                                onConfirm: (values) {
                                  setState(() {
                                    _selectedContainerNos = values;
                                  });
                                  saveDataToApi(values); // Call the method to save data to the API
                                },
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Wrap(
              spacing: 8.0,
              children: _selectedContainerNos.map((containerNo) {
                return Chip(
                  label: Text(
                    containerNo.name,
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: HexColor('20BD67'),
                  onDeleted: () {
                    setState(() {
                      _selectedContainerNos.remove(containerNo);
                    });
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
