import 'package:flutter/material.dart';


class FormAdd extends StatefulWidget {
  
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<FormAdd> {
  String memo;
  TextEditingController controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.black45,
      body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 30.0
                ),
                child: Column(
          children: <Widget>[
            SizedBox(
                height: 70.0,
            ),
          TextField(

           controller: controller,
           style: TextStyle(fontSize:25.0 ,color: Colors.white),
            decoration: InputDecoration(
             hintText: "Memo",
             hintStyle: TextStyle(fontSize: 37.0 , color: Colors.grey)
            ),
            cursorColor: Colors.white,
          ),
          SizedBox(
            height: 30.0,
          ),
          InkWell(
            
            onTap:()=> addChecklist(),
                        child: Row(
                         children: <Widget>[
                             Icon(
                               Icons.check_box,
                               color: Colors.grey,
                             ),
                             Text("Add Checklist" , style: TextStyle(fontSize: 22.0 , color: Colors.grey),)
                         ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Row(
                         children: <Widget>[
                             Icon(
                               Icons.image,
                               color: Colors.grey,
                             ),
                             Text("Add Image" ,style: TextStyle( color: Colors.grey, fontSize: 22.0),)
                         ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: <Widget>[
                          CustomButton(text: "No alert",),
                          CustomButton(text: "Time",),
                          CustomButton(text: "Place",)
                        ],
                      ) 
                       ] ),
                          ),
                  ),
                  
                );
              }
            
              
}


 Future<void> addChecklist() async {

 }
class CustomButton extends StatelessWidget {
  const CustomButton({Key key, this.callback , this.text}) : super(key: key);
  final VoidCallback callback;
  final String text;


  @override
  Widget build(BuildContext context) {


    return Container(
      padding: EdgeInsets.all(8.0),
      height: 45.0,
      child: Material(
        color: Colors.tealAccent,

        elevation: 5.0,
        borderRadius: BorderRadius.circular(15.0),
        child: MaterialButton(
          onPressed: callback,
          minWidth: 100.0,
          height: 5.0,
          child: Text(text),

        ),
      ),
    );
  }
}
class _Mychecklist extends StatefulWidget {
  @override
  __MychecklistState createState() => __MychecklistState();
}

class __MychecklistState extends State<_Mychecklist> {
 bool checked;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: <Widget>[
        Checkbox(
          onChanged:(bool value) => checked = value,
          value: false,
          
        ),



      ],)
    );
  }
}