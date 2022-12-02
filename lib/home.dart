import 'package:flutter/material.dart';
import 'package:vjcet_workshop/convert.dart';
import 'package:vjcet_workshop/increment.dart';
import 'package:vjcet_workshop/students.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.yellow
              ),
              child: Text('VJCET Workshop'),
            ),
            ListTile(
              title: Text('Increment'),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Increment()
                    )
                );
              },
            ),
            ListTile(
              title: Text('Convert'),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Convert()
                    )
                );
              },
            ),
            ListTile(
              title: Text('Student'),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Student()
                    )
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hi there VJCET'),
              SizedBox(
                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.red,
                child: Text('hi there'),
              ),
              Text('Dec 1'),
              MaterialButton(
                color: Colors.yellow,
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Increment()
                      )
                  );
                },
                child: Text('Increment'),
              ),
              MaterialButton(
                color: Colors.lightBlueAccent,
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Convert()
                      )
                  );
                },
                child: Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
