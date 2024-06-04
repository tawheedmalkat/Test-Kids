import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String words;
  final double height;
  final double imageSize; // متغير لحجم الصورة
  final Color backgroundColor; // متغير للون الخلفية

  CategoryCard({
    required this.imageUrl,
    required this.title,
    required this.words,
    required this.height,
    required this.imageSize, // متغير لحجم الصورة
    required this.backgroundColor, // متغير للون الخلفية
  });


  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.0, // تعيين نسبة العرض إلى الارتفاع هنا
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(45),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imageUrl, height: imageSize, width: imageSize),
            SizedBox(height: 10),
            Text(title, style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold)),
            Text(words, style: TextStyle(color: Colors.white, fontSize: 15)),
          ],
        ),
      ),
    );
  }

}
