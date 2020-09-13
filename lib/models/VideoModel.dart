class Video {
  final String id;
  final String title;
  final String thumbnail;
  final String judulchannel;
  final String view;
  final String like;

  Video({
    this.id,
    this.title,
    this.thumbnail,
    this.judulchannel,
    this.view,
    this.like,
  });

  factory Video.fromMap(Map<String, dynamic> snippet) {
    return Video(
      id: snippet['resourceId']['videoId'],
      title: snippet['title'],
      thumbnail: snippet['thumbnails']['high']['url'],
      judulchannel: snippet['channelTitle'],
    );
  }
}