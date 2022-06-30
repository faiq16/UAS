import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
// import 'package:http/http.dart' as http;
// import 'add.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

// This widget is the root
// of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "List Zodiack",
        debugShowCheckedModeBanner: false,
        home: ListViewBuilder());
  }
}

// ignore: must_be_immutable
class ListViewBuilder extends StatelessWidget {
  ListViewBuilder({Key? key}) : super(key: key);

  // Future postData() async {
  //   try {
  //     final post = await http.post(
  //         Uri.parse("http://172.20.10.2:8080/zodiakflutter/insert.php"),
  //         headers: {'Content-Type': 'application/x-www-form-urlencoded'},
  //         body: {"name": _nama.text, "date": _date.text, "desc": _desc.text});
  //     if (post.statusCode == 200) {
  //       print("status : ${post.body}");
  //     }
  //   } catch (error) {
  //     return error.toString();
  //   }
  // }
 
  List<Map> chats = [
    {
      "foto": const AssetImage("taurus.png"),
      "nama": 'Taurus',
      "tgl": 'April 20 - May 20',
      "msg":
          'Smart, ambitious, and trustworthy.'
    },
    {
      "foto": const AssetImage("pisces.png"),
      "nama": 'Pisces',
      "tgl": 'February 19 - March 20',
      "msg":
          'Smart, creative, and deeply intuitive.'
    },
    {
      "foto": const AssetImage("aquarius.jpg"),
      "nama": 'Aquarius',
      "tgl": 'January 20 - February 18',
      "msg":
          'Independent and enigmatical, Aquarians are unique.'
    },
    {
      "foto": const AssetImage("aries.jpg"),
      "nama": 'Aries',
      "tgl": 'March 21 - April 19',
      "msg":
          'Aries are the trailblazers. Passionate and independent.'
    },
    {
      "foto": const AssetImage("gemini.jpg"),
      "nama": 'Gemini',
      "tgl": 'May 21 - Jun 20',
      "msg":
          'Smart, passionate, and dynamic.'
    },
    {
      "foto": const AssetImage("virgo.jpg"),
      "nama": 'Virgo',
      "tgl": 'August 23 - September 22',
      "msg":
          'Smart, sophisticated, and kind.'
    },
    {
      "foto": const AssetImage("cancer.jpg"),
      "nama": 'Cancer',
      "tgl": 'Jun 21 - Jul 22',
      "msg":
          'Emotional, intuitive, and practically psychic; ruled by the moon and characterized by the crab.'
    },
    {
      "foto": const AssetImage("leo.jpg"),
      "nama": 'Leo',
      "tgl": 'Jul 23 - August 22',
      "msg":
          'Bold, intelligent, warm, and courageous.'
    },
    {
      "foto": const AssetImage("capricorn.jpg"),
      "nama": 'Capricorn',
      "tgl": 'December 22 - January 19',
      "msg":
          'Smart, hardworking, and fully in control of their destiny.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Zodiac")),
        body: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: chats[index]["foto"],
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chats[index]["nama"],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        chats[index]["tgl"],
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  trailing: const Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.blueAccent,
                  ),
                  subtitle: Container(
                    margin: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      chats[index]["msg"],
                      style: const TextStyle(fontSize: 10),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ), //           <-- subtitle
                ),
              );
            })
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => const FormAdd(),
        //       ),
        //     );
        //     debugPrint('Clicked FloatingActionButton Button');
        //     ;
        //     // Add your onPressed code here!
        //   },
        //   backgroundColor: Colors.blueAccent,
        //   child: const Icon(Icons.add),
        );
  }

  
  @override
  void dispose() {}
} 