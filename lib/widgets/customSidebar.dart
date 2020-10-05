import 'package:flutter/material.dart';
import 'package:scholar/widgets/sidebarButton.dart';

class CustomSidebar extends StatelessWidget {
  final String semanticLabel;
  final String currentPage;

  const CustomSidebar({Key key, this.semanticLabel, this.currentPage})
      : super(key: key);

  ListTile sideNavList(IconData icon, String title) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: TextStyle(
            color: Colors.purple, fontSize: 14.0, fontWeight: FontWeight.w400),
      ),
      onTap: () {
        // Update the state of the app
        // ...
        // Then close the drawer
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterialLocalizations(context));
    String label = semanticLabel;
    switch (Theme.of(context).platform) {
      case TargetPlatform.iOS:
        label = semanticLabel;
        break;
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        label = semanticLabel ?? MaterialLocalizations.of(context)?.drawerLabel;
    }
    return Semantics(
        scopesRoute: false,
        namesRoute: true,
        explicitChildNodes: true,
        label: label,
        child: ConstrainedBox(
            constraints: const BoxConstraints.expand(width: 304.0),
            child: Material(
            //  color: Colors.lightGreen,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  topRight: Radius.circular(40.0)),
              elevation: 16.0,

              // Add a ListView to the drawer. This ensures the user can scroll
              // through the options in the drawer if there isn't enough vertical
              // space to fit everything.
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    child: Center(
                      child: Container(
                        child: Text(
                          "SCHOLAR",
                          style: TextStyle(color: Colors.purple, fontSize: 28),
                        ),
                      ),
                    ),
                  ),
                  SidebarButton(
                    icon: Icons.home,
                    title: 'Dashboard',
                    routeName: '/dashboard',
                  ),
                  SidebarButton(
                      icon: Icons.account_circle,
                      title: 'Personal Details (Required)', routeName: '/applicationProfiles'
                      ,),
                  SidebarButton(
                      icon: Icons.note,
                      title: 'Work Experience (Optional)', routeName: '/workE'
                      'xperience'
                      '',),
                  SidebarButton(
                      icon: Icons.book,
                      title: 'Qualifications'
                          ' (Optional)', routeName: '/qualification',),
                  SidebarButton(
                      icon: Icons.person,
                      title: 'Parent Details'
                          ' (Optional)', routeName: '/parents',),
                  SidebarButton(icon: Icons.book, title: 'Documents(Optional)'
                      '', routeName: '/documents',),
                  SidebarButton(
                    icon: Icons.insert_drive_file,
                    title: 'Create '
                        'Applications (Required)',
                    routeName: '/applications',
                  ),
                  SidebarButton(
                      icon: Icons.payment,
                      title: 'Pay '
                          'Application Fees (Required)',
                      routeName: '/paidAppFees'),
                  SidebarButton(
                      icon: Icons.send,
                      title: 'Done and '
                          'Submit all (Required)',
                  routeName: '/dashboard',),
                ],
              ),
            )));
  }
}
