import 'package:dockerploy/modules/start_page/create/create_environment.widget.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:dockerploy/data/model/environment.dart';

class EnvironmentCard extends StatelessWidget {
  final Environment env;

  const EnvironmentCard({Key? key, required this.env}) : super(key: key);

  _edit(BuildContext context, Environment environment) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: CreateEnvironment(environment: environment),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SizedBox(
            width: 300,
            child: Styled.widget(
                    child: Row(
              children: [
                const Icon(Icons.dns),
                const SizedBox(
                  width: 15,
                ),
                Text(env.name),
                const Spacer(),
                IconButton(
                    onPressed: () => _edit(context, env),
                    icon: Icon(
                      Icons.edit_square,
                      fill: 1,
                      weight: 1,
                    )),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.manage_search)),
                IconButton(
                  color: Colors.white,
                  icon: const Icon(Icons.play_arrow),
                  onPressed: () {},
                ),
              ],
            ))
                .padding(horizontal: 15, vertical: 10)
                .border(left: 5, color: Colors.green)
                .decorated(color: theme.canvasColor))
        .clipRRect(all: 10);
  }
}
