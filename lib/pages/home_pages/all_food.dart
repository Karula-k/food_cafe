import 'package:flutter/material.dart';
import 'package:food_cafe_app/model/menu.dart';

class AllFoodPage extends StatelessWidget {
  const AllFoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Popular",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: size.width,
          height: size.height * 0.3,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: menulist.length,
              itemBuilder: (context, index) {
                return MenuPages(menu: menulist[index]);
              }),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Top of Week",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        SizedBox(
          width: size.width,
          height: size.height * 0.1,
          child: ListTile(
            title: Text(
              menulist[1].name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(menulist[1].description,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            leading: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                child: Image.network(
                  menulist[1].imgLink,
                  height: 60,
                  width: 60,
                )),
          ),
        )
      ],
    );
  }
}

class MenuPages extends StatelessWidget {
  final Menu menu;
  const MenuPages({Key? key, required this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 2,
      child: SizedBox(
        width: size.width * 0.4,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.25, top: 5),
              child: const Icon(
                Icons.favorite,
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              child: Container(
                color: Colors.grey,
                child: Image.network(
                  menu.imgLink,
                  height: 120,
                  width: 120,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                menu.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Text(menu.description),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "RP ${menu.price}",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
