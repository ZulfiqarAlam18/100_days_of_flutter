import 'package:flutter/material.dart';
import 'show_student_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();

  String? name, fName, age, dob, gender;
  List<Map<String, String>> studentList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Data'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.teal[50],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _buildTextField('Student Name', (value) => name = value),
                const SizedBox(height: 10),
                _buildTextField('Father\'s Name', (value) => fName = value),
                const SizedBox(height: 10),
                _buildTextField('Age', (value) => age = value),
                const SizedBox(height: 10),
                _buildTextField('Date of Birth', (value) => dob = value),
                const SizedBox(height: 10),
                _buildTextField('Gender', (value) => gender = value),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();

                      // Add student data to the list
                      setState(() {
                        studentList.add({
                          'name': name!,
                          'f_name': fName!,
                          'age': age!,
                          'dob': dob!,
                          'gender': gender!,
                        });
                      });

                      // Navigate to ShowStudentList and pass the studentList
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShowStudentList(studentList: studentList),
                        ),
                      );
                    }
                  },
                  child: const Text('Save Data'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, Function(String?) onSaved) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.teal, width: 2.0),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $label';
        }
        return null;
      },
      onSaved: onSaved,
    );
  }
}
