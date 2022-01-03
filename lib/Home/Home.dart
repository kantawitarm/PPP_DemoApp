import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,

          decoration:
              new BoxDecoration(color: Colors.amber), //----------- สีพื้นหลัง
        ),
        Scaffold(
          // appBar: PreferredSize(
          //   preferredSize: Size.fromHeight(100.0),
          //   child: AppBar(
          //     backgroundColor: Colors.green,
          //   ),
          // ),
          key: scaffoldKey,
          // drawer: Drawer(),
          // ignore: unnecessary_new
          drawer: new Drawer(
            // ignore: unnecessary_new
            child: new ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                const DrawerHeader(
                  child: Text('Menu'),
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                ),
                ListTile(
                  title: Text('Home'),
                  onTap: () {
                    //Do some stuff here
                    //Closing programmatically - very less practical use
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                )
              ],
            ),
          ),

          drawerEnableOpenDragGesture: false,
          // floatingActionButton: Builder(builder: (context) {
          //   return FloatingActionButton(
          //     onPressed: () =>
          //         Scaffold.of(context).openDrawer(), // <-- Opens drawer.
          //   );
          // }),
          body: SafeArea(
            child: Container(
                color: Colors.green[50],
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Row(
                  children: [
                    Container(
                        width: 60,
                        height: MediaQuery.of(context).size.height,
                        color: Colors.white70,
                        child: Column(
                          children: [
                            IconButton(
                                iconSize: 50.0,
                                color: Colors.black,
                                icon: const Icon(
                                  Icons.menu,
                                ),
                                onPressed: () {
                                  scaffoldKey.currentState?.openDrawer();
                                  debugPrint('btn_login: test');
                                }),
                          ],
                        )),
                    Flexible(
                      flex: 1,
                      // padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin:
                            const EdgeInsets.only(left: 20, right: 20, top: 0),

                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              Container(
                                height: 20,
                              ),
                              for (int i = 0; i < 10; i++) itemInList(),
                            ],
                          ),
                        ),

                        // color: Colors.amber,
                      ),
                    )
                  ],
                )),
          ),
        ),
      ],
    );
  }

  Widget itemInList(
      {String Jobrequest = "SoftwareDev.",
      String Company = "SoftwareDev Company",
      String location = "Thailand, Bangkok",
      int timePass = 2,
      String detail = "very long text ....."}) {
    return Container(
      height: 150,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
              flex: 1,
              child: Center(
                child: Container(
                  margin: const EdgeInsets.only(left: 20, top: 10),
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.15,
                  decoration: const BoxDecoration(
                    // color: Colors.amber,
                    image: DecorationImage(
                      image: AssetImage('img/logoStart.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              )),
          Flexible(
              flex: 2,
              // padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      Jobrequest,
                      style: TextStyle(
                          fontFamily: 'Tamil MN',
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Center(
                    child: Text(
                      Company,
                      style: TextStyle(
                          color: Colors.black54,
                          fontFamily: 'Tamil MN',
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 20,
                      ),
                      Text(
                        location,
                        style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'Tamil MN',
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 10,
                      ),
                      Text(
                        "${timePass} day ago.",
                        style: TextStyle(
                            color: Colors.black45,
                            fontFamily: 'Tamil MN',
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      ButtonTheme(
                          minWidth: 10.0,
                          height: 10.0,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.blue)))),
                            // style: raisedButtonStyle,
                            onPressed: () {},
                            child: Text('Apply'),
                          )),
                      Container(
                        width: 20,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Icon(
                          Icons.arrow_drop_down,
                        ),
                        Container(width: 30,)
                    ],
                  ),
                  // IconButton(
                  //   icon: const Icon(
                  //     Icons.arrow_drop_down,
                  //   ),
                  //   onPressed: () {}
                  // ),
                  // Text('data'),
                  // IconButton(
                  //               iconSize: 10.0,
                  //               icon: const Icon(
                  //                 Icons.arrow_drop_down , ),
                  //               // icon: const Icon(
                  //               //   Icons.arrow_right,
                  //               //   color: Colors.black,
                  //               //   size: 100.0,
                  //               // ),
                  //               // tooltip: 'Increase volume by 10',
                  //               onPressed: () {
                  //                 // Navigator.push(
                  //                 //   context,
                  //                 //   MaterialPageRoute(
                  //                 //       builder: (context) => Home()),
                  //                 // );
                  //                 debugPrint('btn_login: test');
                  //               },
                  //             ),
                ],
              )
              // Container(
              //   color: Colors.amber,

              //   // child: Text(Jobrequest, style: TextStyle(
              //   //                               fontFamily: 'Tamil MN',
              //   //                               fontSize: 10,
              //   //                               fontWeight: FontWeight.bold),
              //   //                         ),
              // )
              )
        ],
      ),
    );
  }
}
