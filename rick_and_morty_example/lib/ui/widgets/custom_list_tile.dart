import 'package:flutter/material.dart';
import 'package:rick_and_morty_example/data/models/character.dart';
import 'package:rick_and_morty_example/ui/widgets/character_status.dart';

class CustomListTile extends StatelessWidget {
  final Results result;

  const CustomListTile({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: MediaQuery.of(context).size.height / 7,
        color: const Color.fromRGBO(86, 86, 86, 0.8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(result.image),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.9,
                    child: Text(
                      result.name,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  CharacterStatus(
                      liveState: result.status == 'Alive'
                          ? LiveStates.alive
                          : result.status == 'Dead'
                              ? LiveStates.dead
                              : LiveStates.unknown),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Species',
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                result.species,
                                style: Theme.of(context).textTheme.bodyMedium,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                softWrap: false,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Gender',
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              result.gender,
                              style: Theme.of(context).textTheme.bodyMedium,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
