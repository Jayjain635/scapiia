import 'package:flutter/material.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/eighth_page.dart';
import '../widgets/fifth_page.dart';
import '../widgets/footer.dart';
import '../widgets/main_page.dart';
import '../widgets/monsoon_release.dart';
import '../widgets/fourth_page.dart';
import '../widgets/navBar.dart';
import '../widgets/nineth_page.dart';
import '../widgets/second_page.dart';
import '../widgets/seventh_page.dart';
import '../widgets/sixth_page.dart';
import '../widgets/third_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navigationKeys =
      List.generate(4, (index) => GlobalKey());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: DrawerMobile(onNavItemTap: (int navIndex) {
        scrollToSection(navIndex);
      }),
      body: Column(children: [
        //Navbar
        Navbar(
          onMenuTap: () {
            scaffoldKey.currentState?.openDrawer();
          },
        ),

        //Monsoon_Release
        const Monsoonrelese(),
        Flexible(
            child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              SizedBox(
                key: navigationKeys.first,
              ),
              //Main_Page
              const Mainpage(),

              // Page-2_3
              Stack(
                children: [
                  SecondPage(),
                  ThirdPage(
                    key: navigationKeys[1],
                  )
                ],
              ),

              //Page_4
              Fourthpage(
                key: navigationKeys[2],
              ),

              //Page_5
              const Fifthpage(),

              //Page_6
              const Sixthpage(),

              //Page_7
              const Seventhpage(),

              //Page_8
              Eighthpage(
                key: navigationKeys[3],
              ),

              //Page_9
              const NinethPage(),

              //Footer
              const Footer(),
            ],
          ),
        ))
      ]),
    );
  }

  void scrollToSection(int navIndex) {
    final key = navigationKeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(milliseconds: 1000), curve: Curves.linear);
  }
}
