import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

class Demo01 extends BasefulWidget {
  WhyFarther _selection = WhyFarther.harder;
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        PopupMenuButton<WhyFarther>(
          icon: Icon(Icons.add_comment),
          tooltip: "哈哈",
          elevation: 20,
          onSelected: (WhyFarther result) {
            state.setState(() {
              _selection = result;
            });
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
                const PopupMenuItem<WhyFarther>(
                  value: WhyFarther.harder,
                  child: Text('Working a lot harder'),
                ),
                const PopupMenuItem<WhyFarther>(
                  value: WhyFarther.smarter,
                  child: Text('Being a lot smarter'),
                ),
                const PopupMenuItem<WhyFarther>(
                  value: WhyFarther.selfStarter,
                  child: Text('Being a self-starter'),
                ),
                const PopupMenuItem<WhyFarther>(
                  value: WhyFarther.tradingCharter,
                  child: Text('Placed in charge of trading charter'),
                ),
              ],
        ),
        Text("选择  $_selection"),
      ],
    );
  }
}
