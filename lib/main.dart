import 'package:flutter/material.dart';
import 'task.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.red,
      ),
      home: MyFirstPage(),
    );
  }
}

class MyFirstPage extends StatefulWidget {
  @override
  _MyFirstPageState createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  TextEditingController cs = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
              child: CustomScrollView(
                
          slivers: <Widget>[
            SliverAppBar(
              elevation: 0.0,
              pinned: true,
              floating: false,
              snap: false,
              expandedHeight: 300.0,
              backgroundColor: Colors.blueGrey,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Reminder"),
                
                
              ),
              actions: <Widget>[
                    IconButton(icon: Icon(Icons.add,), onPressed: () {},),
                    IconButton(icon: Icon(Icons.search,), onPressed: () {},),
                    IconButton(icon: Icon(Icons.menu,), onPressed: () {},)
              ],
            ),
          
            SliverFillRemaining(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0)                    ),
                    child: RaisedButton(
                      onPressed: (){},
                      color: Colors.teal,
                      child: Row(children: <Widget>[
                        
                         Icon(Icons.add),
                         Text("write a reminder" )
                        
                      ],)
                      ) ),
                  Text(
                    "some other reminders"
                  )
                ],
              )
            )


          ],
          
        ),
      ),
      
    );
  }
}



