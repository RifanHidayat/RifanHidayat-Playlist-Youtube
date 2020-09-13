import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoScreen extends StatefulWidget {

  final String id;
  final String judul;

  VideoScreen({this.id,this.judul});

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {

  YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.id,
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: true,

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Video"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            new YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              onReady: () {

              },
            ),
            SizedBox(height: 20,),
            Text(widget.judul,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),


          ],
        ),
      )
    );
  }
}