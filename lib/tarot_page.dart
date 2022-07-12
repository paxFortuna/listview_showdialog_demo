import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:list_page_demo/model.dart';

class TarotArcanaPage extends StatefulWidget {
  const TarotArcanaPage({Key? key, required this.data}) : super(key: key);
  final TarotArcana data;

  @override
  State<TarotArcanaPage> createState() => _TarotArcanaPageState();
}

class _TarotArcanaPageState extends State<TarotArcanaPage> {

  bool isLiked=false;
  int likeCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data.name),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              width: 200,
              child: Image.asset(widget.data.imgPath),
            ),
            const SizedBox(height: 20),
            Text('He lives in ${widget.data.location}'),
            const SizedBox(height: 20),
            // pub add like_button
            LikeButton(
              size: 30,
              isLiked: isLiked,
              likeCount: likeCount,
            ),
          ],
        ),
      ),
    );
  }
}
