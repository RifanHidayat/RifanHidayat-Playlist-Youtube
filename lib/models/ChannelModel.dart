import 'package:playlist/models/VideoModel.dart';

class Channel {

  final String id;
  final String title;
  final String profile;
  final String subsriber;
  final String Jmlvideo;
  final String uploadPlaylistId;
  List<Video> videos;

  Channel({
    this.id,
    this.title,
    this.profile,
    this.subsriber,
    this.Jmlvideo,
    this.uploadPlaylistId,
    this.videos,
  });

  factory Channel.fromMap(Map<String, dynamic> map) {
    return Channel(
      id: map['id'],
      title: map['snippet']['title'],
      profile: map['snippet']['thumbnails']['default']['url'],
      subsriber: map['statistics']['subscriberCount'],
      Jmlvideo: map['statistics']['videoCount'],
      uploadPlaylistId: map['contentDetails']['relatedPlaylists']['uploads'],
    );
  }

}
