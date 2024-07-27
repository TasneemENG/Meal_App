import 'package:flutter/material.dart';
import 'package:meal_app/data.dart';
import 'package:meal_app/widget/CategoryItem.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /*Image.network(
                "https://scontent.faly8-1.fna.fbcdn.net/v/t39.30808-6/333180283_1273159770288360_110320533535690719_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=9c7eae&_nc_ohc=bJFFGDkTd7YAX8K85wU&_nc_ht=scontent.faly8-1.fna&oh=00_AfCCH9alUhVwWc73bOd7iw2_4OSvFg_tWjhU1l-TTuUk3A&oe=65E34DCA",
                width: 50,
                height: 50,
              ),*/
            Text(
              "Bremar",
              style: TextStyle(
                color: Colors.red[900],
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return CategoryItems(
              name: CATEGORIES[index].name,
              image: CATEGORIES[index].image,
              id: CATEGORIES[index].id,
              isLeftRounded: index % 2 == 0,
            );
          },
          itemCount: CATEGORIES.length,
        ),
      ),
    );
  }
}
