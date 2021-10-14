import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffE6E6E6),
      appBar: AppBar(
        title: Text('Home',style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),),

        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: Color(0xff0754a2),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xff0754a2), Color(0xff3484c6)])),
                child: Stack(
                  children: [
                    Positioned(
                      //left : size.width*0.675,
                      left: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? size.width * 0.675
                          : size.width * 0.38,
                      top: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? size.height * 0.01
                          : size.height * 0.01,

                      child: Image.asset(
                        'assets/images/signoutBlack.png',
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.transparent, width: 4),
                                shape: BoxShape.circle,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/images/logo.jpeg',
                                  alignment: Alignment.center,
                                  fit: BoxFit.cover,
                                  width: size.width * 0.3,
                                  height: size.height * 0.15,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Container(
                                child: Text(
                                  'kola llori',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                'medycarehealth@gmail.com',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white.withOpacity(0.7)),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  //width: size.width*0.5,
                  decoration: BoxDecoration(
                    color: Color(0xFFE7EEFE),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    //focusColor: Colors.blue,
                    title: const Text(
                      'Home',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    ),
                    leading: Container(
                        height: 22.0,
                        width: 22.0,
                        child: Image.asset(
                          'assets/images/homeBlack.png',
                          fit: BoxFit.scaleDown,
                          color: Colors.blue,
                        )),
                    // trailing: Icon(Icons.arrow_forward_ios_outlined,
                    //     color: Colors.blueAccent),
                    onTap: () {
                      //Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  //width: size.width*0.5,
                  decoration: BoxDecoration(
                   // color: Color(0xFFE7EEFE),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    title: const Text(
                      'Profile',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                    leading: Container(
                        height: 22.0,
                        width: 22.0,
                        child: Image.asset(
                          'assets/images/profileBlack.png',
                          fit: BoxFit.scaleDown,
                        )),
                    // trailing: Icon(Icons.arrow_forward_ios_outlined,
                    //     color: Colors.blueAccent),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              SizedBox(
                child: Container(
                  height: 1,
                  color: Color(0xffE6E6E6),
                ),
              ),
              Container(
                height: size.height * 0.05,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Care',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  //width: size.width*0.5,
                  decoration: BoxDecoration(
                    //color: Color(0xFFE7EEFE),
                    borderRadius: BorderRadius.circular(5),
                  ),

                  child: ListTile(
                    title: const Text(
                      'Vitals',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                    leading: Container(
                        height: 22.0,
                        width: 22.0,
                        child: Image.asset(
                          'assets/images/vitalsBlue.png',
                          color: Colors.black,
                          fit: BoxFit.scaleDown,
                        )),
                    // trailing: Icon(Icons.arrow_forward_ios_outlined,
                    //     color: Colors.blueAccent),
                    onTap: () {
                      // Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  //width: size.width*0.5,
                  decoration: BoxDecoration(
                   // color: Color(0xFFE7EEFE),
                    borderRadius: BorderRadius.circular(5),
                  ),

                  child: ListTile(
                    title: const Text(
                      'Drug Schedule',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                    leading: Container(
                        height: 22.0,
                        width: 22.0,
                        child: Image.asset(
                          'assets/images/drugScheduleBlue.png',
                          fit: BoxFit.scaleDown,
                          color: Colors.black,
                        )),
                    // trailing: Icon(Icons.arrow_forward_ios_outlined,
                    //     color: Colors.blueAccent),
                    onTap: () {},
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: Container(
                    //width: size.width*0.5,
                    decoration: BoxDecoration(
                     // color: Color(0xFFE7EEFE),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ListTile(
                      title: const Text(
                        'Vaccines',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w500),
                      ),
                      leading: Container(
                          height: 22.0,
                          width: 22.0,
                          child: Image.asset(
                            'assets/images/vaccinesBlue.png',
                            fit: BoxFit.scaleDown,
                            color: Colors.black,
                          )),
                      // trailing: Icon(Icons.arrow_forward_ios_outlined,
                      //     color: Colors.blueAccent),
                      onTap: () {
                        // Navigator.of(context).pop();
                      },
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  //width: size.width*0.5,
                  decoration: BoxDecoration(
                    //color: Color(0xFFE7EEFE),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    title: const Text(
                      'Test Results',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                    leading: Container(
                        height: 22.0,
                        width: 22.0,
                        child: Image.asset(
                          'assets/images/testResultsBlue.png',
                          fit: BoxFit.scaleDown,
                          color: Colors.black,
                        )),
                    // trailing: Icon(Icons.arrow_forward_ios_outlined,
                    //     color: Colors.blueAccent),
                    onTap: () {
                      //   Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
              SizedBox(
                child: Container(
                  height: 1,
                  color: Color(0xffE6E6E6),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  //width: size.width*0.5,
                  decoration: BoxDecoration(
                    //color: Color(0xFFE7EEFE),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    title: const Text(
                      'Contact US',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                    leading: Container(
                        height: 22.0,
                        width: 22.0,
                        child: Image.asset(
                          'assets/images/contactUsBlack.jpeg',
                          fit: BoxFit.scaleDown,

                        )),
                    // trailing: Icon(Icons.arrow_forward_ios_outlined,
                    //     color: Colors.blueAccent),
                    onTap: () {
                      //Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  //width: size.width*0.5,
                  decoration: BoxDecoration(
                    //color: Color(0xFFE7EEFE),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    title: const Text(
                      'Settings',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                    leading: Container(
                        height: 22.0,
                        width: 22.0,
                        child: Image.asset(
                          'assets/images/settingsBlack.png',
                          fit: BoxFit.scaleDown,
                          color: Colors.black,
                        )),
                    // trailing: Icon(Icons.arrow_forward_ios_outlined,
                    //     color: Colors.blueAccent),
                    onTap: () {
                      //Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  //width: size.width*0.5,
                  decoration: BoxDecoration(
                    //color: Color(0xFFE7EEFE),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    title: const Text(
                      'Sign Out',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                    leading: Container(
                        height: 22.0,
                        width: 22.0,
                        child: Image.asset(
                          'assets/images/signoutBlack.png',
                          fit: BoxFit.scaleDown,


                          color: Colors.black,

                        )),
                    // trailing: Icon(Icons.arrow_forward_ios_outlined,
                    //     color: Colors.blueAccent),
                    onTap: () {
                      //Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? size.height
                  : 700,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        color: Colors.white,
                        height: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? size.height * 0.26
                            : size.height * 0.665,
                        width: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? size.width
                            : size.width,
                        child: Image.asset('assets/images/family.png'),
                      ),
                      Container(
                          color: Colors.white,
                          //height: size.height*0.065,
                          // width: size.width,
                          height: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? size.height * 0.065
                              : size.height * 0.1,
                          width: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? size.width
                              : size.width
                          // child: Image.asset('assets/images/vitalsBlue.png'),
                          ),
                    ],
                  ),
                  Positioned(
                    left: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 30
                        : 56,
                    top: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 167
                        : 209,
                    // bottom: 271,
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: (){print('hw');},
                                child: Container(
                                  // height: size.height*0.2,
                                  // width: size.width*0.4,
                                  height: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                      ? size.height * 0.2
                                      : size.height * 0.4,
                                  width: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                      ? size.width * 0.4
                                      : size.width * 0.4,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      //border: Border.all(width: 0,color: Colors.grey),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(
                                              0, 3), // changes position of shadow
                                        ),
                                      ],
                                      color: Colors.white),
                                  child: Column(
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).orientation ==
                                                    Orientation.portrait
                                                ? size.height * 0.0
                                                : size.height * 0.05,
                                      ),
                                      Container(
                                        // height: size.height*0.15,
                                        // width: size.width*0.15,
                                        height:
                                            MediaQuery.of(context).orientation ==
                                                    Orientation.portrait
                                                ? size.height * 0.15
                                                : size.height * 0.2,
                                        width:
                                            MediaQuery.of(context).orientation ==
                                                    Orientation.portrait
                                                ? size.width * 0.15
                                                : size.width,

                                        child: Image.asset(
                                            'assets/images/vitalsBlue.png'),
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).orientation ==
                                                    Orientation.portrait
                                                ? size.height * 0
                                                : size.height * 0.05,
                                      ),
                                      Container(
                                        child: Center(
                                          child: Text(
                                            'Vitals',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                //width: size.width*0.016,

                                //height: size.height*0.063,
                                width: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                    ? size.width * 0.036
                                    : size.width * 0.02,
                              ),
                              Container(
                                // height: size.height*0.2,
                                // width: size.width*0.4,
                                height: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                    ? size.height * 0.2
                                    : size.height * 0.4,
                                width: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                    ? size.width * 0.4
                                    : size.width * 0.4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).orientation ==
                                                  Orientation.portrait
                                              ? size.height * 0.03
                                              : size.height * 0.05,
                                    ),
                                    Container(
                                     // height: size.height * 0.10,
                                      height:
                                      MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.height * 0.10
                                          : size.height * 0.2,

                                      //width: size.width * 0.15,
                                      width:
                                      MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                          ? size.width * 0.15
                                          : size.width * 0.10,
                                      child: Image.asset(
                                          'assets/images/drugScheduleBlue.png',
                                      fit: BoxFit.scaleDown,

                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).orientation ==
                                                  Orientation.portrait
                                              ? size.height * 0.02
                                              : size.height * 0.05,
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          'Drug Schedule',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            //height: size.height*0.063,
                            height: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? size.height * 0.02
                                : size.height * 0.035,
                          ),
                          Row(
                            children: [
                              Container(
                                // height: size.height*0.2,
                                // width: size.width*0.4,
                                height: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                    ? size.height * 0.2
                                    : size.height * 0.4,
                                width: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                    ? size.width * 0.4
                                    : size.width * 0.4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).orientation ==
                                                  Orientation.portrait
                                              ? size.height * 0.0
                                              : size.height * 0.05,
                                    ),
                                    Container(
                                      height: size.height * 0.15,
                                      width: size.width * 0.15,
                                      child: Image.asset(
                                          'assets/images/vaccinesBlue.png'),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).orientation ==
                                                  Orientation.portrait
                                              ? size.height * 0.0001
                                              : size.height * 0.05,
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          'Vaccines',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                //width: size.width*0.016,
                                width: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                    ? size.width * 0.036
                                    : size.width * 0.02,
                              ),
                              Container(
                                // height: size.height*0.2,
                                // width: size.width*0.4,
                                height: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                    ? size.height * 0.2
                                    : size.height * 0.4,
                                width: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                    ? size.width * 0.4
                                    : size.width * 0.4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).orientation ==
                                                  Orientation.portrait
                                              ? size.height * 0.0
                                              : size.height * 0.05,
                                    ),
                                    Container(
                                      height: size.height * 0.15,
                                      width: size.width * 0.15,
                                      child: Image.asset(
                                          'assets/images/testResultsBlue.png'),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).orientation ==
                                                  Orientation.portrait
                                              ? size.height * 0.0001
                                              : size.height * 0.05,
                                    ),
                                    Container(
                                      child: Center(
                                        child: Text(
                                          'Test Results',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            //height: size.height*0.063,
                            height: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? size.height * 0.02
                                : size.height * 0.035,
                          ),
                          Container(
                            // height: size.height*0.2,
                            // width: size.width*0.83,
                            height: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? size.height * 0.2
                                : size.height * 0.4,
                            width: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? size.width * 0.83
                                : size.width * 0.83,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                      ? size.height * 0.0
                                      : size.height * 0.05,
                                ),
                                Container(
                                  height: size.height * 0.15,
                                  width: size.width * 0.15,
                                  child: Image.asset(
                                      'assets/images/chronicConditions.png'),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                      ? size.height * 0.0001
                                      : size.height * 0.05,
                                ),
                                Container(
                                  child: Center(
                                    child: Text(
                                      'Chronic Conditions',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13),
                                    ),
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
            ),
            // SizedBox(
            //
            //   height: MediaQuery.of(context).orientation == Orientation.portrait
            //       ? size.height
            //       : size.height,
            //
            // ), commit
          ],
        ),
      ),
    );
  }
}
