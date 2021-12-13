import 'package:flutter/material.dart';
import 'users.dart';


class AddUserDetailPage extends StatefulWidget{

  @override
  AddUserDetailPageState createState() => AddUserDetailPageState();
}


class AddUserDetailPageState extends State<AddUserDetailPage> {

TextEditingController usernameController = TextEditingController();
TextEditingController familyController = TextEditingController();
TextEditingController nameController = TextEditingController();
TextEditingController numberController = TextEditingController();


 @override
 Widget build(BuildContext context) {

   Widget logo() {
     return Padding(
         padding: EdgeInsets.only(top: 100),
         child: Container(
             child: Align(
                 child: Text('ADD USER', style: TextStyle(
                     fontSize: 30, fontWeight: FontWeight.bold))
             )
         )
     );
   }

   void Add() {
     String username = usernameController.text;
     String family = familyController.text;
     String name = nameController.text;
     String number = numberController.text;
   }

   Widget buttonAdd(String text, void func()) {
     return RaisedButton(
       color: Colors.white,
       child: Text(
         text,
       ),
       onPressed: () {
         func();
       },
     );
   }
   Widget input(String hint, TextEditingController controller, bool obscure) {
     return Container(
         padding: EdgeInsets.only(left: 20, right: 20),
         child: TextField(
           controller: controller,
           obscureText: obscure,
           style: TextStyle(fontSize: 20),
           decoration: InputDecoration(
             hintStyle: TextStyle(fontWeight: FontWeight.bold,
                 fontSize: 20,
                 color: Colors.blueAccent),
             hintText: hint,
             focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.white, width: 3)
             ),
             enabledBorder:
             OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.white, width: 3)
             ),
           ),
         )
     );
   }
   Widget AddForm(String label,void func()) {
     return Container(
       child: Column(
         children: <Widget>[
           Padding(
               padding: EdgeInsets.only(bottom: 20, top: 10),
               child: input("Username", usernameController, false)
           ),
           Padding(
               padding: EdgeInsets.only(bottom: 20, top: 10),
               child: input("Family", familyController, false)
           ),
           Padding(
               padding: EdgeInsets.only(bottom: 20, top: 10),
               child: input("Name", nameController, false)
           ),
           Padding(
               padding: EdgeInsets.only(bottom: 20),
               child: input("Number", numberController, false)
           ),
           SizedBox(height: 20,),
           Padding(
               padding: EdgeInsets.only(left: 20, right: 20),
               child: Container(
                 height: 50,
                 width: MediaQuery.of(context).size.width,
                 child: buttonAdd(label,Add),
               )

           )
         ],
       ),
     );
   }
   return Scaffold(
       body: Column(
         children: <Widget>[
           logo(),
           AddForm('ADD', Add),
         ],
       )
   );
 }
}