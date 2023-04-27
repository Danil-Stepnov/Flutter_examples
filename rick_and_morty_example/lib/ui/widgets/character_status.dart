import 'package:flutter/material.dart';

enum LiveStates { alive, dead, unknown }

class CharacterStatus extends StatelessWidget {
  final LiveStates liveState;

  const CharacterStatus({Key? key, required this.liveState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.circle,
          size: 11,
          color: liveState == LiveStates.alive
              ? Colors.lightGreenAccent[400]
              : liveState == LiveStates.dead
                  ? Colors.red
                  : Colors.white,
        ),
        Text(liveState == LiveStates.dead
            ? 'Dead'
            : liveState == LiveStates.alive
                ? 'Alive'
                : 'Unknown',
        style: Theme.of(context).textTheme.bodySmall,),
      ],
    );
  }
}
