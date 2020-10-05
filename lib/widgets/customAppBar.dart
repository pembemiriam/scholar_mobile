import 'package:flutter/material.dart';
import 'package:scholar/screens/account.dart';
import 'package:scholar/screens/login.dart';
import 'package:scholar/screens/profile.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final Size preferredSize;

  CustomAppBar({
    Key key,
    @required GlobalKey<ScaffoldState> scaffoldKey,
  }) : _scaffoldKey = scaffoldKey, preferredSize = Size.fromHeight(50.0), super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      brightness: Brightness.light,
      elevation: 10.0,

      backgroundColor: Colors.lightGreen,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () => _scaffoldKey.currentState.openDrawer(),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/homePage');
            },
            child: Text(
              'SCHOLAR',
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.5),
            ),
          ),
          Row(
            children: <Widget>[

              DropdownButtonHideUnderline(child: ButtonTheme(
                alignedDropdown: true,
                child: DropdownButton(

                 // value: _value,
                  iconEnabledColor: Colors.white,

                  hint: Row(
                    children: <Widget>[
                      Icon(Icons.account_circle),
                      SizedBox(width: 10,),
                      Text("Profile",
                      style: TextStyle(color: Colors.white),)
                    ],
                  ),
                  items: [
                    DropdownMenuItem(
                      child: FlatButton(

                          child: Text("Profile"),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder:
                              (context) => Profile()));
                        },
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: FlatButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder:
                              (context) => Account()));
                        },
                          child: Text("Account")),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: FlatButton(
                        onPressed: (){

                        },
                          child: Text("Networks")),
                      value: 3,
                    ),

                    DropdownMenuItem(
                      child: FlatButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder:
                              (context) => Login()));
                        },
                          child: Text("Sign out")),
                      value: 3,
                    )],
                  onChanged: (value){
                   /* if(value == 1){
                      Navigator.push(context, MaterialPageRoute(builder:
                      (context) => Profile()));
                    }else if(value == 2){
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context) => Account()));
                    }*/

                  },
                    ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
