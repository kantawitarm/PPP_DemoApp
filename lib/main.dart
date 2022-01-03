import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

// import หน้าต่างๆ
import 'loginPage/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    int currentTabIndex = 0;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter_Home_tabBar',
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.blue[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('test page'),



              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.blue,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                  debugPrint('TextButton: test');
                },
                child: Text('LoginPage'),
              ),


              // Container(
              //     height: 120.0,
              //     width: 120.0,
              //     // color: Colors.blue,
              //     decoration: const BoxDecoration(
              //       image: DecorationImage(
              //         image: AssetImage('img/LoginPic.png'),
              //         fit: BoxFit.fill,
              //       ),
              //       shape: BoxShape.circle,
              //     ),
              //   )
            ],
          ),
        ),
        // bottomNavigationBar: _mybar(),
      ),
    );
  }

  // Widget selectpage(int index) // <------- ตัวเลือก page
  // {
  //   switch (index) {
  //     case 0:
  //       return Container();  // <----เรียกใช้ ไฟล์ HomePage
  //       break;
  //     case 1:
  //       return Container();//NewContactPage(head: 'XD',title:'XDDD');//TestPage();//
  //       break;
  //     case 2:
  //     return Container();//NewInfoPageBuyer();
  //       break;
  //     case 3:
  //     return Container();//CartPage();//Profile();//Mypage();//LoadingPage();//
  //     /*return Center(
  //         child: Text('There is no page builder for this index[$index].'),
  //       );*/
  //    /* Center(
  //         child: Text('There is no page builder for this index[$index].'));*/
  //       break;

  //     default:
  //       return
  //        Center(
  //         child: Text('There is no page builder for this index[$index].'),
  //       );
  //       break;
  //   }
  // }

// Widget _mybar() {
//     return CircleBottomNavigation(
//       circleColor:Colors.green,
//       activeIconColor:Colors.white,
//       textColor:Colors.grey,
//       inactiveIconColor:Colors.green,
//           initialSelection: currentTabIndex,
//           tabs: [
//             TabData(icon: Icons.home, title: "หน้าหลัก"),
//             TabData(icon: Icons.campaign, title: "โปรโมชั่น"),
//             TabData(icon: Icons.notifications_active, title: "แจ้งเตือน"),
//             TabData(icon: Icons.settings, title: "การตั้งค่า"),
//           ],
//           onTabChangedListener: (position) {
//             setState(() {
//               currentTabIndex = position;
//             });
//           },
//         );
//   }

}
