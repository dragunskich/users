import 'package:flutter/material.dart';

import 'users.dart';


class UserDetailPage extends StatefulWidget{
  final int index;
  UserDetailPage(this.index);
  @override
  UserDetailPageState createState() => UserDetailPageState(index);
}

 class UserDetailPageState extends State<UserDetailPage > {

  final int usernameId;


  UserDetailPageState(this.usernameId);

  @override
  Widget build(BuildContext context) {

    final User = Users[usernameId];
    return Scaffold(
        appBar: AppBar(
          title: Text("User Detail Page"),
        ),
        body: Padding(

          padding: EdgeInsets.all(15),

           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.all(10),

                  child: Text(

                    User.username,

                  )
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                      User.family,
                      style: Theme.of(context).textTheme.bodyText1,

                  ),

              ),
              Container(
                  padding: EdgeInsets.all(10),

                  child: Text(

                    User.name,

                  )
              ),
              Container(
                  padding: EdgeInsets.all(10),

                  child: Text(

                    User.number,

                  )
              ),
            ],
          ),

        )
    );
  }
}