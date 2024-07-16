part of '../screens/left_screen.dart';

class _PlayerSection extends StatefulWidget {
  const _PlayerSection();

  @override
  State<_PlayerSection> createState() => __PlayerSectionState();
}

class __PlayerSectionState extends State<_PlayerSection> {
  YoutubePlayerController? _controller;
  final videoUrl = 'https://www.youtube.com/watch?v=DOOrIxw5xOw';

  @override
  void initState() {
    super.initState();
    //youtube player
    final videoId = YoutubePlayer.convertUrlToId(videoUrl);
    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        isLive: true,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 820,
      child: AspectRatio(
        aspectRatio: 16 / 9, // Mengatur rasio aspek sesuai kebutuhan
        child: YoutubePlayer(
          controller: _controller!,
          showVideoProgressIndicator: true,
        ),
      ),
    );
  }
}
