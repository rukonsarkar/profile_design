import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Profile",
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).orientation == Orientation.portrait){
      return Scaffold(
        appBar: AppBar(
          title: Text('Profile', style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 48, // Image radius
                      backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.1MOKCrKpcoPQdr33ec-isAAAAA?rs=1&pid=ImgDetMain'),
                    ),
                  ],
                ),
                Text('F R. Rukon Sarkar', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                Text('frrukonsarkar@gmail.com', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w100),),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(child: Text('F. R. Rukon Sarkar is an app developer, UI designer, and a problem solver based in Gazipur, Dhaka, Bangladesh. He has a strong presence on Facebook with a page where he shares his work and interacts with followers. Additionally, you can find him on GitHub, where he contributes to projects. His passion for technology and problem-solving is evident in his online presence. If you’re interested in Android app development using Flutter, feel free to explore his work and connect with him on the platforms mentioned above!', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w300),textAlign: TextAlign.justify)),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text('Profile', style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Expanded(
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 48, // Image radius
                      backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.1MOKCrKpcoPQdr33ec-isAAAAA?rs=1&pid=ImgDetMain'),
                    ),
                    Text('F R. Rukon Sarkar', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                    Text('frrukonsarkar@gmail.com', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w100),),
                  ],
                ),

                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(child: Text('F. R. Rukon Sarkar is an app developer, UI designer, and a problem solver based in Gazipur, Dhaka, Bangladesh. He has a strong presence on Facebook with a page where he shares his work and interacts with followers. Additionally, you can find him on GitHub, where he contributes to projects. His passion for technology and problem-solving is evident in his online presence. If you’re interested in Android app development using Flutter, feel free to explore his work and connect with him on the platforms mentioned above!', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w300),textAlign: TextAlign.justify)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    }
  }
