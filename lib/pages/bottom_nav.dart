import 'package:flutter/material.dart';
import 'package:food_cafe_app/pages/dine_page.dart';
import 'package:food_cafe_app/pages/favourite_page.dart';
import 'package:food_cafe_app/pages/home_pages.dart';
import 'package:food_cafe_app/pages/settings_page.dart';

class BottomNavigation extends StatefulWidget {
  static const routedName = '/botomnavigation';
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int pageIndex = 0;
  final pages = const [HomePage(), DinePage(), FavouritePage(), SettingsPage()];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        titleSpacing: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 0.08 * size.width),
          child: OutlinedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(const CircleBorder())),
              onPressed: () {},
              child: const Center(
                child: Icon(
                  Icons.align_horizontal_left_outlined,
                  color: Colors.grey,
                ),
              )),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 0.08 * size.width),
            child: OutlinedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(const CircleBorder())),
                onPressed: () {},
                child:
                    const Icon(Icons.account_circle_sharp, color: Colors.grey)),
          ),
        ],
      ),
      body: pages[pageIndex],
      bottomNavigationBar: customBottomNavigation(context),
    );
  }

  AnimatedContainer customBottomNavigation(BuildContext context) {
    return AnimatedContainer(
      height: 90,
      decoration: const BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.all(Radius.circular(50))),
      duration: const Duration(seconds: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          pageIndex == 0
              ? ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(const CircleBorder()),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(16.0)),
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  child: const Icon(
                    Icons.home,
                    size: 30,
                    color: Colors.black,
                  ))
              : IconButton(
                  iconSize: 30,
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  icon: const Icon(Icons.home_outlined, color: Colors.white)),
          pageIndex == 1
              ? ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(const CircleBorder()),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(16.0)),
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  child: const Icon(
                    Icons.add_business,
                    size: 30,
                    color: Colors.black,
                  ))
              : IconButton(
                  onPressed: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  icon: const Icon(Icons.add_business_outlined,
                      size: 30, color: Colors.white)),
          pageIndex == 2
              ? ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(const CircleBorder()),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(16.0)),
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: () {
                    setState(() {
                      pageIndex = 2;
                    });
                  },
                  child: const Icon(
                    Icons.favorite,
                    size: 30,
                    color: Colors.black,
                  ))
              : IconButton(
                  iconSize: 30,
                  onPressed: () {
                    setState(() {
                      pageIndex = 2;
                    });
                  },
                  icon: const Icon(Icons.favorite_border, color: Colors.white)),
          pageIndex == 3
              ? ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(const CircleBorder()),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(16.0)),
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: () {
                    setState(() {
                      pageIndex = 3;
                    });
                  },
                  child: const Icon(
                    Icons.settings,
                    size: 30,
                    color: Colors.black,
                  ))
              : IconButton(
                  iconSize: 30,
                  onPressed: () {
                    setState(() {
                      pageIndex = 3;
                    });
                  },
                  icon: const Icon(
                    Icons.settings_outlined,
                    color: Colors.white,
                  )),
        ],
      ),
    );
  }
}
