import 'package:flutter/material.dart';
import 'package:meuapp/modules/create/create_bottomsheet.dart';

import 'package:meuapp/shared/models/feed/feed_page.dart';
import 'package:meuapp/shared/theme/app_theme.dart';
import 'package:meuapp/shared/theme/widgets/bottom_navigator/app_bottom_navigator.dart';

class HomePage extends StatefulWidget {
  // final UserModel user;
  final List<Widget> pages;
  const HomePage({
    Key? key,
    /*required this.user*/
    required this.pages,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;

  void changeIndex(int index) {
    if (index == 3) {
      showModalBottomSheet(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32))),
          context: context,
          builder: (context) => CreateBottomsheet());
    } else {
      currentIndex = index;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            widget.pages[currentIndex],
            Positioned(
              bottom: 14,
              left: 26,
              right: 26,
              child: AppBottomNavigator(
                currentIndex: currentIndex,
                onChanged: changeIndex,
              ),
            )
          ],
        ),
      ),
    );
  }
}
