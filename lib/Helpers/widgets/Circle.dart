import 'package:flutter/material.dart';


class CircleAvatarWithText extends StatelessWidget {
  final String imageUrl;
  final String text;
  final double avatarRadius;
  final double imageRadius;
  final double imageSize;

  const CircleAvatarWithText({
    this.imageSize = 40.0,
    required this.imageUrl,
    required this.text,
    this.avatarRadius = 30.0,
    this.imageRadius = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Color(0xffEAEAEA),
          radius: avatarRadius,
          child: SizedBox(
          width: imageSize,
    height: imageSize,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(imageRadius),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
      ],
    );
  }
}
