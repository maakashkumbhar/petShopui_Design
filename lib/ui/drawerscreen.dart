import 'package:flutter/material.dart';
import 'package:pet_ui/config.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: primaryGreen,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          'Michale Obamansnow',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Circular',
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'This is Text two',
                          style: TextStyle(
                              fontFamily: 'Circular',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Column(
                children: drawerItems
                    .map((element) => Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              Icon(
                                element['icon'],
                                color: Colors.white,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                element['title'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                        ))
                    .toList(),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Settings',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Circular',
                          fontSize: 20),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 10,
                      width: 2,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'LogOut',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Circular'),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
