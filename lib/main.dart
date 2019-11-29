import 'package:flutter/material.dart';
import 'pages/Form.dart';
import 'package:carousel_pro/carousel_pro.dart';
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
      appBar: AppBar(
              elevation: 0.0,
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
      body: Container(
              child:
            Column(
                children: <Widget>[
                  SizedBox(
                    height: 300.0,
                    child: Carousel(
                    boxFit: BoxFit.cover,
                    images:[
                      AssetImage("images/ca.jpg"),
                      AssetImage("images/ca1.jpg"),
                      AssetImage("images/ca2.jpg"),
                      AssetImage("images/ca3.jpg"),
                      AssetImage("images/ca4.jpg"),
                      AssetImage("images/ca5.jpg"),
                      AssetImage("images/ca6.jpg"),
                      AssetImage("images/ca7.jpg"),
                      AssetImage("images/ca8.jpg"),
                      AssetImage("images/ca9.jpg"),
                    ] ,
                    showIndicator: false,
                  )
                  ),
                   SizedBox(
                     height: 20.0,
                   ),
                  Material(
                    
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.tealAccent,
                    child: Container(
                      width: 200.0,
                      height: 40.0,
                      child: MaterialButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_) => FormAdd()));
                        },
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
            


         
          
        ),
      
      
    );
  

  
}}
