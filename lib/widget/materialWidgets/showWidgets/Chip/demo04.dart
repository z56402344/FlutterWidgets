import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo04 extends BasefulWidget {
  final List<ActorFilterEntry> _cast = <ActorFilterEntry>[
    const ActorFilterEntry('Aaron Burr', 'AB'),
    const ActorFilterEntry('Alexander Hamilton', 'AH'),
    const ActorFilterEntry('Eliza Hamilton', 'EH'),
    const ActorFilterEntry('James Madison', 'JM'),
  ];
  List<String> _filters = <String>[];

  Iterable<Widget> get actorWidgets sync* {
    for (ActorFilterEntry actor in _cast) {
      yield Padding(
        padding: const EdgeInsets.all(4.0),
        child: FilterChip(
          avatar: CircleAvatar(child: Text(actor.initials)),
          label: Text(actor.name),
          selected: _filters.contains(actor.name),
          onSelected: (bool value) {
            state.setState(() {
              if (value) {
                _filters.add(actor.name);
              } else {
                _filters.removeWhere((String name) {
                  return name == actor.name;
                });
              }
            });
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Wrap(
          children: actorWidgets.toList(),
        ),
        Text('Look for: ${_filters.join(', ')}'),
      ],
    );
  }
}

class ActorFilterEntry {
  const ActorFilterEntry(this.name, this.initials);
  final String name;
  final String initials;
}
