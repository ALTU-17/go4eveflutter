import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go4eveflutter/pages/navigation/profile.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // static const String _title = 'Home';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(

      fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,

    ),
    Text(
      'Index 1: Bookings',
      style: optionStyle,

    ),
    Text(
      'Index 2: Cart',
      style: optionStyle,
    ),
    Text(
      'Index 3: Story',
      style: optionStyle,
    ),
    Text(
      'Index 4: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Go4Event'),
        backgroundColor: CupertinoColors.inactiveGray,

      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: CupertinoColors.inactiveGray,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: CupertinoColors.inactiveGray,
            icon: Icon(Icons.add_business_sharp),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            backgroundColor: CupertinoColors.inactiveGray,
            icon: Icon(Icons.add),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            backgroundColor: CupertinoColors.inactiveGray,
            icon: Icon(Icons.add_a_photo_outlined),
            label: 'Story',
          ),
          BottomNavigationBarItem(
            backgroundColor: CupertinoColors.inactiveGray,
            icon: Icon(Icons.account_circle),
            label: 'Profile',


          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },

      ),
    );
  }
}
//Sie code grocery

// import 'package:flutter/material.dart';
//
// import 'navigator.dart';
//
//
// class Home extends StatefulWidget {
//   @override
//   _DashboardScreenState createState() => _DashboardScreenState();
// }
//
// class _DashboardScreenState extends State<Home> {
//   int currentIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: navigatorItems[currentIndex].screen,
//       bottomNavigationBar: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.only(
//             topRight: Radius.circular(15),
//             topLeft: Radius.circular(15),
//           ),
//           boxShadow: [
//             BoxShadow(
//                 color: Colors.black38.withOpacity(0.1),
//                 spreadRadius: 0,
//                 blurRadius: 37,
//                 offset: Offset(0, -12)),
//           ],
//         ),
//         child: ClipRRect(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(15),
//             topRight: Radius.circular(15),
//           ),
//           child: BottomNavigationBar(
//             backgroundColor: Colors.white,
//             currentIndex: currentIndex,
//             onTap: (index) {
//               setState(() {
//                 currentIndex = index;
//               });
//             },
//             type: BottomNavigationBarType.fixed,
//             selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
//             unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
//             unselectedItemColor: Colors.black,
//             items: navigatorItems.map((e) {
//               return getNavigationBarItem(
//                   label: e.label, index: e.index, iconPath: e.iconPath);
//             }).toList(),
//           ),
//         ),
//       ),
//     );
//   }
//
//   BottomNavigationBarItem getNavigationBarItem(
//       {required String label, required String iconPath, required int index}) {
//     Color iconColor =
//     index == currentIndex ? ThemeData().primaryColor : Colors.black;
//     return BottomNavigationBarItem(
//       label: label,
//       icon: Image.asset(
//         iconPath,
//         color: iconColor,
//       ),
//     );
//   }
// }
