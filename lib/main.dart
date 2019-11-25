import 'package:flutter/material.dart';

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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: false,
            snap: false,
            expandedHeight: 200.0,
            actions: <Widget>[
              IconButton(icon: Icon(Icons.add,), onPressed: () {},),
              IconButton(icon: Icon(Icons.search,), onPressed: () {},),
              IconButton(icon: Icon(Icons.menu,), onPressed: () {},)
            ],
          ),
          SliverFillRemaining(child: Text("reminder"),)

        ],
      ),
      
    );
  }
}



