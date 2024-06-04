
import 'package:flutter/cupertino.dart';

import '../Helpers/Constants/Colors.dart';
import 'categories.dart';

class GridviewCategory extends StatelessWidget {
  const GridviewCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height*0.9 ,

        child: GridView.count(
          physics:ScrollPhysics(), // منع التمرير العمودي
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          padding: EdgeInsets.all(20),
          childAspectRatio: MediaQuery.of(context).size.height / 1000,
          children: [
            CategoryCard(
              imageSize: 100,
              backgroundColor: ThemeApp.animalframeColor,
              imageUrl: "assets/images/Giraffe.png",
              title: "Animals",
              words: "70 words",
              height: 150,
            ),
            CategoryCard(
              imageSize: 70,
              backgroundColor: ThemeApp.FruitesColor,
              imageUrl: "assets/images/fruits.png",
              title: "Fruits",
              words: "70 words",
              height: 150,
            ),
            CategoryCard(
              imageSize: 80,
              backgroundColor: ThemeApp.shapesframeColor,
              imageUrl:"assets/images/shape.png",
              title: "Shapes",
              words: "70 words",
              height: 150,
            ),
            CategoryCard(
              imageSize: 70,
              backgroundColor: ThemeApp.clothingColor,
              imageUrl: "assets/images/cloth.png",
              title: "Clothing",
              words: "70 words",
              height: 150,
            ),
            CategoryCard(
              imageSize: 60,
              backgroundColor: ThemeApp.numbersColor,
              imageUrl: "assets/images/numirc.png",
              title: "Numbers",
              words: "70 words",
              height: 150,
            ),
            CategoryCard(
              imageSize: 100,
              backgroundColor: ThemeApp.LettersColor,
              imageUrl: "assets/images/alpha.png",
              title: "Letters",
              words: "70 words",
              height: 150,
            ),
          ],
        ),

      ),
    );
  }
}
