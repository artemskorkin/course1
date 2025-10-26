import 'package:flutter/material.dart';

class TrackCard extends StatefulWidget {
  const TrackCard({super.key});

  @override
  State<TrackCard> createState() => _TrackCardState();
}

class _TrackCardState extends State<TrackCard> {
  int counter = 0;

  void _incCount() => setState(() {
    counter++;
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListTile(
        leading: Image.asset("assets/images/music.jpg"),
        title: const TitleWidget(text: "pashanim"),
        subtitle: const SubtitleWidget(text: "vibes"),
        trailing: LikeButton(text: "Like $counter", incCount: _incCount),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  final String text;
  const TitleWidget({super.key, this.text = ""});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontWeight: FontWeight.bold));
  }
}

class SubtitleWidget extends StatelessWidget {
  final String text;
  const SubtitleWidget({super.key, this.text = ""});
  @override
  Widget build(BuildContext context) {
    return Text(text.toUpperCase());
  }
}

class LikeButton extends StatefulWidget {
  final String text;
  final Function incCount;
  const LikeButton({super.key, this.text = "", required this.incCount});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: IconButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;

                widget.incCount();
              });
            },
            icon: isFavorite
                ? const Icon(Icons.favorite, color: Colors.red)
                : const Icon(Icons.favorite_border),
          ),
        ),
        Text(widget.text),
      ],
    );
  }
}
