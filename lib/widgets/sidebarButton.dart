import 'package:flutter/material.dart';

class SidebarButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final String routeName;
  final String currentPage;
  SidebarButton({@required this.icon, this.title, this.routeName, this.currentPage}) ;

  @override
  Widget build(BuildContext context) {
    return ListTile(

      leading: Icon(
        icon,
        color: Colors.purple,
      ),
      title: Text(

        title,
        style: TextStyle(

            color: Colors.purple, fontSize: 14.0, fontWeight: FontWeight.w400),
      ),
      onTap: () {
        Navigator.of(context).pop();
        if(this.currentPage == this.title) return;
        Navigator.of(context).pushReplacementNamed(routeName);
      },
    );
  }
}
