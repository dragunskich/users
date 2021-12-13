import 'package:flutter/material.dart';
import 'package:untitled1/pages/add.dart';
import 'package:untitled1/pages/edit.dart';

class User{
 final String username;
  final String family;
 final String name;
  final String number;
  User( this.username, this.family,this.name, this.number);

}
final List<User> Users = [
  User('ttt','fff', 'name', '111'),
  User('zzz', 'fff', 'name', '111')
];

class UsersList extends StatefulWidget{

  @override
  UsersListState createState() => UsersListState();
}
class UsersListState extends State<UsersList> {

  @override
  Widget build(BuildContext context){
    return Container(
        child: ListView.builder(
            itemCount:Users.length,
            itemBuilder: (context, i){
              return Dismissible(
                  key: Key(Users[i].username),
                  child: ListTile(
                      title:Text(Users[i].username),
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => UserDetailPage(i)
                        ));

                      }
                  ),

                  onDismissed: (title) {
                    setState(() {
                      Users.removeAt(i);
                    });
                  });

            },

        ),


    );


  }

}