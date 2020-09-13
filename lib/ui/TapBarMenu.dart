import 'package:flutter/material.dart';
import 'HomeScreenRifan.dart' as rifan;
import 'HomeScreenUdacoding.dart' as udacoding;


class  TapBarMenu extends StatefulWidget {
  @override
  _TapBarMenuState createState() => _TapBarMenuState();
}

class _TapBarMenuState extends State<TapBarMenu> with SingleTickerProviderStateMixin {

  //create controller untuk tabBar
  TabController controller;

  @override

  void initState(){
    controller = new TabController(vsync: this, length: 2);
    //tambahkan SingleTickerProviderStateMikin pada class _HomeState
    super.initState();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //create appBar
      appBar: new AppBar(
        //warna background
        backgroundColor: Colors.lightGreen,
        //judul
        title: new Text("Playlist ",style: TextStyle(color: Colors.white),),
        //bottom
        bottom: new TabBar(
          controller: controller,
          //source code lanjutan
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.videocam,color: Colors.white,),text: "Rifan Hidayat",),
            new Tab(icon: new Icon(Icons.videocam,color: Colors.white,),text: "Udacoding",),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new rifan.ScreenRifan(),
          new udacoding.ScreenUdacoding()

        ],
      ),
    );
  }
}