import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Constants/Colors.dart';
import 'categories.dart';

class GridviewCategory extends StatelessWidget {
  const GridviewCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 5.0),
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.9,
          child: GridView.builder(
            physics: ScrollPhysics(), // السماح بالتمرير العمودي
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.75, // يمكنك ضبطه حسب الحاجة
            ),
            padding: const EdgeInsets.all(20),
            itemCount: categories.length + 1,
            itemBuilder: (BuildContext context, int index) {
              if (index == categories.length) {

                return SizedBox(height: 100);
              }
              return CategoryCard(
                imageSize: categories[index].imageSize,
                backgroundColor: categories[index].backgroundColor,
                imageUrl: categories[index].imageUrl,
                title: categories[index].title,
                words: categories[index].words,
                height: 150,
              );
            },
          ),
        ),
      ),
    );
  }
}

// نموذج بيانات الفئة
class Category {
  final double imageSize;
  final Color backgroundColor;
  final String imageUrl;
  final String title;
  final String words;

  Category({
    required this.imageSize,
    required this.backgroundColor,
    required this.imageUrl,
    required this.title,
    required this.words,
  });
}

final List<Category> categories = [
  Category(
    imageSize: 100,
    backgroundColor: ThemeApp.animalframeColor,
    imageUrl: "assets/images/Giraffe.png",
    title: "Animals",
    words: "70 words",
  ),
  Category(
    imageSize: 70,
    backgroundColor: ThemeApp.FruitesColor,
    imageUrl: "assets/images/fruits.png",
    title: "Fruits",
    words: "70 words",
  ),
  Category(
    imageSize: 80,
    backgroundColor: ThemeApp.shapesframeColor,
    imageUrl: "assets/images/shape.png",
    title: "Shapes",
    words: "70 words",
  ),
  Category(
    imageSize: 70,
    backgroundColor: ThemeApp.clothingColor,
    imageUrl: "assets/images/cloth.png",
    title: "Clothing",
    words: "70 words",
  ),
  Category(
    imageSize: 60,
    backgroundColor: ThemeApp.numbersColor,
    imageUrl: "assets/images/numirc.png",
    title: "Numbers",
    words: "70 words",
  ),
  Category(
    imageSize: 100,
    backgroundColor: ThemeApp.LettersColor,
    imageUrl: "assets/images/alpha.png",
    title: "Letters",
    words: "70 words",
  ),
];
