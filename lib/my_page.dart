import 'package:flutter/material.dart';
import 'package:list_page_demo/model.dart';
import 'package:list_page_demo/tarot_page.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final List<TarotArcana> tarotData = List.generate(
    tarotContents.length,
    (index) => TarotArcana(
      name: tarotContents[index].name,
      imgPath: tarotContents[index].imgPath,
      location: tarotContents[index].location,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Page'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: tarotContents.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: SizedBox(
                height: 50,
                width: 30,
                child: Image.asset(tarotData[index].imgPath),
              ),
              title: Text(tarotData[index].name),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => TarotArcanaPage(
                      data: tarotData[index],
                    ),
                ));
                debugPrint(tarotData[index].name);
              },
            ),
          );
        },
      ),
    );
  }
}
