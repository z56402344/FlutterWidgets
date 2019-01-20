import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {
  int _act = 1;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: const Icon(Icons.flight_land),
        title: const Text('Trix\'s airplane'),
        subtitle: _act != 2 ? const Text('The airplane is only in Act II.') : null,
        enabled: _act == 2,
        onTap: () { /* react to the tile being tapped */ }
    );
  }
}
