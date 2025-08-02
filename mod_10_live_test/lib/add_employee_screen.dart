import 'package:flutter/material.dart';


class AddEmployeeScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController salaryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF1FF), // light purple background
      appBar: AppBar(
        title: Text('Add Employee'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: UnderlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: ageController,
                decoration: InputDecoration(
                  labelText: 'Age',
                  border: UnderlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: salaryController,
                decoration: InputDecoration(
                  labelText: 'Salary',
                  border: UnderlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 32),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // You can add form validation or saving logic here
                    print("Employee Added");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: StadiumBorder(),
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  child: Text('Add Employee'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}