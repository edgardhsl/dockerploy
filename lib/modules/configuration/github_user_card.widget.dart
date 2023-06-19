import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class GithubUserCard extends StatefulWidget {
  final String name;
  final String avatarUrl;
  final int repoCount;

  const GithubUserCard(
      {super.key,
      required this.name,
      required this.avatarUrl,
      required this.repoCount});

  @override
  State<GithubUserCard> createState() => _GithubUserCardState();
}

class _GithubUserCardState extends State<GithubUserCard> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Styled.widget(
            child: Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(widget.avatarUrl),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.name,
                  style: const TextStyle(fontWeight: FontWeight.w700)),
              const SizedBox(
                height: 3,
              ),
              const Text("Repositórios: 30"),
            ],
          ),
        )
      ],
    ))
        .alignment(Alignment.center)
        .padding(all: 15)
        .borderRadius(all: 15)
        .ripple()
        .backgroundColor(Colors.grey.shade800, animate: true)
        .clipRRect(all: 25) // clip ripple
        .borderRadius(all: 25, animate: true)
        .elevation(
          pressed ? 0 : 20,
          borderRadius: BorderRadius.circular(25),
          shadowColor: const Color(0x30000000),
        )
        .constrained(height: 80)
        .padding(vertical: 12)
        .scale(all: pressed ? 0.95 : 1.0, animate: true)
        .animate(const Duration(milliseconds: 150), Curves.easeOut);
  }
}
