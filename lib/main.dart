import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

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

    Future<void> goToWebPage(String urlString) async {
      final Uri _url = Uri.parse(urlString);
      if (!await launchUrl(_url)) {
        throw 'Could not launch $_url';
      }
    }

    if(MediaQuery.of(context).orientation == Orientation.portrait){
      return Scaffold(
        appBar: AppBar(
          title: Text('Profile', style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.green,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_rounded, color: Colors.white,))
          ],
          leading: Icon(Icons.menu, color: Colors.white,),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
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
                Text('frrukonsarkar@gmail.com', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w200),),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(Icons.call_end_rounded, color: Colors.green,),
                          Text('Call Now', style: TextStyle(color: Colors.green),),
                      ],),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(Icons.email, color: Colors.green,),
                          Text('E-mail', style: TextStyle(color: Colors.green))
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(Icons.facebook, color: Colors.green,),
                          Text('Facebook', style: TextStyle(color: Colors.green))
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(0),
                      child: Expanded(child: Text('F. R. Rukon Sarkar is an app developer, UI designer, and a problem solver based in Gazipur, Dhaka, Bangladesh. He has a strong presence on Facebook with a page where he shares his work and interacts with followers. Additionally, you can find him on GitHub, where he contributes to projects. His passion for technology and problem-solving is evident in his online presence. If you’re interested in Android app development using Flutter, feel free to explore his work and connect with him on the platforms mentioned above!', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w300),textAlign: TextAlign.justify)),
                    ),
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
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_rounded, color: Colors.white,))
          ],
          leading: Icon(Icons.menu, color: Colors.white,),
        ),
        body: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 48, // Image radius
                          backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.1MOKCrKpcoPQdr33ec-isAAAAA?rs=1&pid=ImgDetMain'),
                        ),
                        Text('F R. Rukon Sarkar', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                        Text('frrukonsarkar@gmail.com', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w100),),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  IconButton(onPressed: () async{
                                    await  goToWebPage("tel:01647707659");
                                  }, icon: Icon(Icons.call_end_rounded, color: Colors.green,)),
                                  Text('Call', style: TextStyle(color: Colors.green, fontSize: 12))
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  IconButton(onPressed: () async {
                                    await  goToWebPage("mailto:programmerrukon@gmail.com");
                                  }, icon: Icon(Icons.email, color: Colors.green,)),
                                  Text('E-mail', style: TextStyle(color: Colors.green, fontSize: 12))
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  IconButton(onPressed: () async {
                                    await  goToWebPage("https://facebook.com/programmerrukon");
                                  }, icon: Icon(Icons.facebook, color: Colors.green,)),
                                  Text('Facebook', style: TextStyle(color: Colors.green, fontSize: 12))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Text('F. R. Rukon Sarkar is an app developer, UI designer, and a problem solver based in Gazipur, Dhaka, Bangladesh. He has a strong presence on Facebook with a page where he shares his work and interacts with followers. Additionally, you can find him on GitHub, where he contributes to projects. His passion for technology and problem-solving is evident in his online presence. If you’re interested in Android app development using Flutter, feel free to explore his work and connect with him on the platforms mentioned above!', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w300),textAlign: TextAlign.justify),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

      );
    }

    }
  }
