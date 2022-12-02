import 'package:flutter/material.dart';

class Student extends StatelessWidget {
  Student({Key? key}) : super(key: key);

  List<String> names = ['John', 'Edwin', 'Jace', 'Varun'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index){
            return Container(
              color: Colors.yellow,
              margin: EdgeInsets.all(10),
              child: Text(names[index]),
            );
          },
        ),
      ),
    );
  }
}
