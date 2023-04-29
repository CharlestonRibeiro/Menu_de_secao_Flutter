import 'package:flutter/material.dart';
import 'package:menu_section/controller/menu_click_controller.dart';
import 'package:menu_section/pages/widgets/menu.dart';
import 'package:menu_section/pages/widgets/section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scrollController = ScrollController();

  final keySection1 = GlobalKey();
  final keySection2 = GlobalKey();
  final keySection3 = GlobalKey();

  
  

  

  @override
  void dispose() {
    scrollController.dispose;
    super.dispose();
  }

  

  @override
  Widget build(BuildContext context) {

    final menuController = MenuClickController(
      customScrollController: scrollController,  
      customKeySection1: keySection1,
      customKeySection2: keySection2, 
      customKeySection3: keySection3, 
    );

    

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            scrollController.animateTo(
              0,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          },
        ),
        body: Column(
          children: [
            Menu( onMenuClick: menuController.onMenuClick),
            Expanded(
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(children: [
                  Section(key: keySection1, color: Colors.red, height: 1000),
                  Section(key: keySection2, color: Colors.black, height: 2000),
                  Section(key: keySection3, color: Colors.blue, height: 200),
                ]),
              ),
            ),
          ],
        ));
  } 

  
}
