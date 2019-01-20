import 'package:flutter/material.dart';
import 'package:myapp/common/BasefulWidget.dart';

class Demo01 extends BasefulWidget {
  int curIndex = 0;
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new RaisedButton(
          child: Text("点击下一步"),
          onPressed: ((){
            state.setState((){
              curIndex = curIndex+1;
            });
          }),
        ),
        new Stepper(
          currentStep: curIndex, // <-- 激活的下标
          onStepContinue:((){
            //点击继续的逻辑
            state.setState((){
              curIndex = curIndex+1;
            });
          }),
          onStepCancel: ((){
           //点击取消的逻辑

          }),
          steps: <Step>[
            new Step(
              title: new Text('第一步'),
              content: new Text('第一步内容'),
              state: curIndex>=0?StepState.complete:StepState.disabled,
              isActive: true,
              subtitle: new Text('第一步小标题'),
            ),
            new Step(
              title: new Text('第二步'),
              state: curIndex>=1?StepState.complete:StepState.editing,
              content: new Text('第二步内容'),
            ),
            new Step(
              title: new Text('第三步'),
              state: curIndex>=2?StepState.complete:StepState.editing,
              content: new Text('第三步内容'),
            ),
          ],
        ),
      ],
    );
  }
}
