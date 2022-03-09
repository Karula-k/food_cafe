import 'package:flutter/material.dart';
import 'package:food_cafe_app/pages/home_pages/all_food.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: ListView(
        padding:
            EdgeInsets.only(left: 0.08 * size.width, right: 0.08 * size.width),
        children: <Widget>[
          const SizedBox(
            height: 15.0,
          ),
          const Text(
            "Good Food \nFast Delivery.",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          const TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.adjust),
                hintText: "Search....",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)))),
          ),
          const SizedBox(
            height: 15,
          ),
          TabBar(
              labelColor: Colors.white,
              isScrollable: true,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black,
              ),
              unselectedLabelColor: Colors.black,
              tabs: const <Widget>[
                Tab(
                  child: Text(
                    "All",
                    style: TextStyle(
                      fontSize: 21,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Fast Food",
                    style: TextStyle(
                      fontSize: 21,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Bakery",
                    style: TextStyle(
                      fontSize: 21,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Random",
                    style: TextStyle(
                      fontSize: 21,
                    ),
                  ),
                ),
              ]),
          SizedBox(
            height: size.height * 0.5,
            child: const TabBarView(children: [
              AllFoodPage(),
              AllFoodPage(),
              AllFoodPage(),
              AllFoodPage(),
            ]),
          )
        ],
      ),
    );
  }
}
