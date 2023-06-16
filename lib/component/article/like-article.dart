import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class Like_Article extends StatelessWidget {
  const Like_Article({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Row(
            children: [
              Text("ถูกใจบทความนี้"),
            ],
          ),
          Row(
            children: [
              LikeButton(
                onTap: onLikeButtonTapped,
                size: 30,
                circleColor: const CircleColor(
                    start: Color(0xff00ddff), end: Color(0xff0099cc)),
                bubblesColor: const BubblesColor(
                  dotPrimaryColor: Color(0xff33b5e5),
                  dotSecondaryColor: Color(0xff0099cc),
                ),
                likeBuilder: (bool isLiked) {
                  return Icon(
                    Icons.thumb_up,
                    color: isLiked ? Colors.blue[400] : Colors.grey,
                    size: 20,
                  );
                },
                likeCount: 15,
                countBuilder: (count, bool isLiked, String text) {
                  var color = isLiked ? Colors.black : Colors.grey;
                  Widget result;
                  if (count == 0) {
                    result = Text(
                      "0",
                      style: TextStyle(color: color),
                    );
                  } else {
                    result = Text(
                      text,
                      style: TextStyle(color: color),
                    );
                  }
                  return result;
                },
              ),
              LikeButton(
                onTap: disLikeButtonTapped,
                size: 30,
                circleColor: const CircleColor(
                    start: Color(0xff00ddff), end: Color(0xff0099cc)),
                bubblesColor: const BubblesColor(
                  dotPrimaryColor: Color(0xff33b5e5),
                  dotSecondaryColor: Color(0xff0099cc),
                ),
                likeBuilder: (bool isLiked) {
                  return Icon(
                    Icons.thumb_down,
                    color: isLiked ? Colors.blue[400] : Colors.grey,
                    size: 20,
                  );
                },
                likeCount: 10,
                countBuilder: (count, bool isLiked, String text) {
                  var color = isLiked ? Colors.black : Colors.grey;
                  Widget result;
                  if (count == 0) {
                    result = Text(
                      "0",
                      style: TextStyle(color: color),
                    );
                  } else {
                    result = Text(
                      text,
                      style: TextStyle(color: color),
                    );
                  }
                  return result;
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Future<bool> onLikeButtonTapped(bool isLiked) async {
  return !isLiked;
}

Future<bool> disLikeButtonTapped(bool isLiked) async {
  return !isLiked;
}
