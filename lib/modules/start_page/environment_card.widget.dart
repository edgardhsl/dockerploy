import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:dockerploy/data/model/environment.dart';

class EnvironmentCard extends StatelessWidget {
  final Environment env;

  const EnvironmentCard({Key? key, required this.env}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 300,
        child: Styled.widget(
                child: Row(
          children: [
            const Icon(Icons.dns),
            const SizedBox(
              width: 15,
            ),
            const Text("dsadasd"),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.manage_search)),
            IconButton(
              color: Colors.white,
              icon: const Icon(Icons.play_arrow),
              onPressed: () {},
            ),
          ],
        ))
            .alignment(Alignment.center)
            .borderRadius(all: 5)
            .ripple()
            .padding(all: 10)
            .backgroundColor(Colors.grey.shade800, animate: true)
            .clipRRect(all: 15) // clip ripple
            .borderRadius(all: 15, animate: true)
            .elevation(
              0,
              borderRadius: BorderRadius.circular(5),
              shadowColor: const Color(0x30000000),
            ) // shadow borderRadius
            .constrained(height: 70)
            .padding(all: 10)
            .scale(all: 1.0, animate: true)
            .animate(const Duration(milliseconds: 150), Curves.easeOut));
  }
}
