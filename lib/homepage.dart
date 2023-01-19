import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  TextEditingController dateController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    String formattedDate = DateFormat("yyyy-MM-dd").format(DateTime.now());
    dateController.text = formattedDate.toString();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('TDS Time Sheet')),
        body: Column(
          children: [
            Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  readOnly: true,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.calendar_today),
                      border: OutlineInputBorder(),
                      labelText: 'Enter Date'),
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2023),
                      lastDate: DateTime(2101),
                    );
                    if (pickedDate != null) {
                      String formattedDate =
                          DateFormat("yyyy-MM-dd").format(pickedDate);

                      setState(() {
                        dateController.text = formattedDate.toString();
                      });
                    } else {
                      print("not selected");
                    }
                  },
                  controller: dateController,
                )),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Project Name',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Area',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Submit Time'),
            ),
          ],
        ),
      ),
    );
  }
}
