import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:my_app/Home/Home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        decoration:
            new BoxDecoration(color: Colors.amber), //----------- สีพื้นหลัง
      ),
      Scaffold(
        appBar: null,
        body: SafeArea(
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width,
                        // color: Colors.blue,
                        
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('img/LoginPic.png'),
                            fit: BoxFit.fill,
                          ),
                          // shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 200.0),
                        child: ClipPath(
                          clipper: WaveClipperTwo(reverse: true),
                          child: Container(
                              height: 120,
                              width: MediaQuery.of(context).size.width,
                              color: Colors.white,
                              child: Container(
                                  margin: const EdgeInsets.only(
                                      top: 40.0, left: 30),
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(
                                        fontFamily: 'Tamil MN',
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ))),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.496,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Container(
                      margin:
                          const EdgeInsets.only(top: 0, left: 40, right: 40),
                      child: Column(
                        children: [
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(
                                Icons.perm_identity,
                                color: Colors.black,
                                size: 30.0,
                              ),
                              const SizedBox(
                                height: 1,
                                width: 15,
                              ),
                              const Text(
                                'USERNAME',
                                style: TextStyle(
                                    fontFamily: 'Tamil MN',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                            width: 1,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                filled: true,
                                hintStyle: TextStyle(color: Colors.grey[800]),
                                // hintText: "Type in your text",
                                fillColor: Colors.white70),
                          ),

                          // new line .................
                          const SizedBox(
                            height: 20,
                            width: 1,
                          ),

                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(
                                Icons.perm_identity,
                                color: Colors.black,
                                size: 30.0,
                              ),
                              const SizedBox(
                                height: 1,
                                width: 15,
                              ),
                              const Text(
                                'PASSWORD',
                                style: TextStyle(
                                    fontFamily: 'Tamil MN',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                            width: 1,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                filled: true,
                                hintStyle: TextStyle(color: Colors.grey[800]),
                                // hintText: "Type in your text",
                                fillColor: Colors.white70),
                          ),

                          //new line
                          // const SizedBox(
                          //   height: 20,
                          //   width: 1,
                          // ),

                          Row(
                            children: [
                              
                              const Spacer(),
                              IconButton(
                                iconSize: 100.0,
                                icon: const Icon(
                                  Icons.arrow_right, ),
                                // icon: const Icon(
                                //   Icons.arrow_right,
                                //   color: Colors.black,
                                //   size: 100.0,
                                // ),
                                // tooltip: 'Increase volume by 10',
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()),
                                  );
                                  // debugPrint('btn_login: test');
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )

              // Center(
              //   child: Container(
              //     color: Colors.blue[100],
              //   ),
              // ),

              // child: Column(
              //   children: [

              //      TextButton(
              //       style: TextButton.styleFrom(
              //         primary: Colors.blue,
              //       ),
              //       onPressed: () {
              //         Navigator.pop(context);
              //         debugPrint('TextButton: test');
              //       },
              //       child: Text('back'),
              //     )
              //   ],
              // )

              ),
        ),

        // bottomNavigationBar: AcceptProduct(),
      ),
    ]);
  }
}
