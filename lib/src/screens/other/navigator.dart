// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';
// import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
// import 'package:motion_tab_bar_v2/motion-tab-controller.dart';
// import 'package:porto/src/screens/home/home_page.dart';
// import 'package:porto/src/screens/profile/profile_page.dart';

// class NavigatorPage extends StatefulWidget {
//   final String? title;
//   const NavigatorPage({super.key, this.title});

//   @override
//   State<NavigatorPage> createState() => _NavigatorPageState();
// }

// class _NavigatorPageState extends State<NavigatorPage>
//     with SingleTickerProviderStateMixin {
//   MotionTabBarController? _tabBarController;

//   @override
//   void initState() {
//     super.initState();

//     //
//     _tabBarController = MotionTabBarController(
//       initialIndex: 0,
//       length: 2,
//       vsync: this,
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _tabBarController!.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: MotionTabBar(
//         controller:
//             _tabBarController, // ADD THIS if you need to change your tab programmatically
//         initialSelectedTab: "Dashboard",
//         useSafeArea: true, // default: true, apply safe area wrapper
//         labels: ["Dashboard", "Profile"],
//         icons: [
//           Icons.dashboard,
//           Icons.people_alt,
//         ],

//         // optional badges, length must be same with labels
//         // badges: [
//         //   // Default Motion Badge Widget
//         //   const MotionBadgeWidget(
//         //     text: '99+',
//         //     textColor: Colors.white, // optional, default to Colors.white
//         //     color: Colors.red, // optional, default to Colors.red
//         //     size: 18, // optional, default to 18
//         //   ),

//         //   // custom badge Widget
//         //   Container(
//         //     color: Colors.black,
//         //     padding: const EdgeInsets.all(2),
//         //     child: const Text(
//         //       '48',
//         //       style: TextStyle(
//         //         fontSize: 14,
//         //         color: Colors.white,
//         //       ),
//         //     ),
//         //   ),

//         //   // allow null
//         //   null,

//         //   // Default Motion Badge Widget with indicator only
//         //   const MotionBadgeWidget(
//         //     isIndicator: true,
//         //     color: Colors.red, // optional, default to Colors.red
//         //     size: 5, // optional, default to 5,
//         //     show: true, // true / false
//         //   ),
//         // ],
//         tabSize: 50,
//         tabBarHeight: 55,
//         textStyle: const TextStyle(
//           fontSize: 12,
//           color: Colors.black,
//           fontWeight: FontWeight.w500,
//         ),
//         tabIconColor: Colors.blue[600],
//         tabIconSize: 28.0,
//         tabIconSelectedSize: 26.0,
//         tabSelectedColor: Colors.blue[900],
//         tabIconSelectedColor: Colors.white,
//         tabBarColor: Color(0xFFAFAFAF),
//         onTabItemSelected: (int value) {
//           setState(() {
//             _tabBarController!.index = value;
//           });
//         },
//       ),
//       body: TabBarView(
//         physics: NeverScrollableScrollPhysics(),
//         controller: _tabBarController,
//         children: [
//           HomePage(
//             title: "Dashboard Page",
//             controller: _tabBarController!,
//           ),
//           ProfilePage(
//             title: "Home Page",
//             controller: _tabBarController!,
//           ),
//         ],
//       ),
//     );
//   }
// }
