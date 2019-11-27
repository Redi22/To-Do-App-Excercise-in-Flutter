import 'package:flutter/material.dart';
import 'package:to_do/Models/task.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blueGrey,
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
      backgroundColor: Color(0xFF083663),
      
      body: SafeArea(
        
              child: CustomScrollView(
                
                
          slivers: <Widget>[
            SliverAppBar(
              elevation: 0.0,
              pinned: true,
              floating: false,
              snap: false,
              expandedHeight: 300.0,
              backgroundColor: Color(0xFF083663),
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Reminder"),
                background: Image.asset("images/download.jpeg"),
                
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
                  Material(
                    
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.tealAccent,
                    child: Container(
                      width: 200.0,
                      height: 40.0,
                      child: MaterialButton(
                        onPressed: (){},
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.add),
                            Text("Write Reminder"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                ],
              )
            )


          ],
          
        ),
      ),
      
    );
  }
}



