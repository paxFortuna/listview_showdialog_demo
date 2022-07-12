import 'package:flutter/material.dart';
import 'package:list_page_demo/models/model.dart';
import 'package:list_page_demo/screens/details/tarot_page.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final List<TarotArcana> tarotData = List.generate(
    tarotContents.length,
    (index) =>
        TarotArcana(
          name: tarotContents[index].name,
          imgPath: tarotContents[index].imgPath,
          location: tarotContents[index].location,
        ),
  );

  void showPopup(context, name, image, location) {
    showDialog(context: context, builder: (context) {
      return Dialog(
        child: Container(
          width: MediaQuery
              .of(context)
              .size
              .width * 0.7,
          height: 380,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(image, width: 150, height: 200,),
                ),
                const SizedBox(height: 20),
                Text(
                  name,
                  style: const TextStyle(fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,),
                ),
                Text(
                  location,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[500],
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                  label: const Text('종료'),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

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
                      builder: (context) =>
                          TarotArcanaPage(
                            data: tarotData[index],
                          ),
                    ));
                debugPrint(tarotData[index].name);
              },
              trailing:Expanded(
                child: TextButton(
                  onPressed: () {
                    showPopup(
                      context,
                      tarotContents[index].name,
                      tarotContents[index].imgPath,
                      tarotContents[index].location,
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  child: const Text('Popup', style: TextStyle(fontSize: 12),),
                ),
              ),
            ),
          );
        },
      ),

    );
  }
}
