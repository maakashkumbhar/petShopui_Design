import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_ui/config.dart';
import 'package:pet_ui/ui/descriptionPage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xoffset = 0;
  double yoffset = 0;
  double scalefactor = 1;

  bool isdrawerOn = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      transform: Matrix4.translationValues(xoffset, yoffset, 0)
        ..scale(scalefactor),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isdrawerOn ? 10 : 0.0),
        color: drawercolor,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 90,
            color: Colors.white60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  isdrawerOn
                      ? IconButton(
                          icon: Icon(FontAwesomeIcons.arrowLeft),
                          onPressed: () {
                            setState(() {
                              xoffset = 0;
                              yoffset = 0;
                              scalefactor = 1;
                              isdrawerOn = false;
                            });
                          })
                      : IconButton(
                          icon: Icon(FontAwesomeIcons.bars),
                          onPressed: () {
                            setState(() {
                              xoffset = 200;
                              yoffset = 150;
                              scalefactor = 0.6;
                              isdrawerOn = true;
                            });
                          }),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            'Pets..',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontFamily: 'Circular'),
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined),
                              Text(
                                'Pune,India',
                                style: TextStyle(
                                    fontFamily: 'Circular',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80'),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width / 1.1 + 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white70),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 22,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'Search Pet Product',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 22,
                        fontFamily: 'Circular'),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.grey,
                    size: 22,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                            boxShadow: shadowList,
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(
                          categories[index]['iconPath'],
                          height: 50,
                          width: 50,
                          color: Colors.grey[700],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(categories[index]['name']),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 180,
                          width: 190,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: shadowList,
                              color: Colors.blueGrey[200]),
                          child: Center(
                            child: Stack(
                              children: [
                                Image.asset(
                                  'images/pet-cat1.png',
                                  fit: BoxFit.fill,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Scala',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Circular',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Icon(
                                      FontAwesomeIcons.male,
                                      size: 20,
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Algerian Cats',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.grey,
                                  ),
                                  Text('This is some City.')
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green,
                                  ),
                                  child: IconButton(
                                      icon: Icon(Icons.arrow_forward_ios),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DescrpitionPage()));
                                      }),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
