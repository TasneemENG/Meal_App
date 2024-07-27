import 'package:flutter/material.dart';

class CategoryItems extends StatelessWidget {
  final String name;
  final String image;
  final String id;
  final bool isLeftRounded;

  const CategoryItems({
    super.key,
    required this.name,
    required this.image,
    required this.id,
    required this.isLeftRounded,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: isLeftRounded ? const Radius.circular(30) : Radius.zero,
          bottomLeft: isLeftRounded ? const Radius.circular(30) : Radius.zero,
          topLeft: isLeftRounded ? Radius.zero : const Radius.circular(30),
          bottomRight: isLeftRounded ? Radius.zero : const Radius.circular(30),
        ),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, "mealScreen", arguments: {
              "id": id,
              "name": name,
            });
          },
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(image),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.black54,
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  name,
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 20,
                child: const Text(
                  "Try?",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.orange,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
