import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';

import 'demo01.dart';


const String title = "Stepper Widget";

const String _Text0 =
"""### **描述**
> $title 
- 一个Material Design 步骤指示器，显示一系列步骤的过程
  对于一个步骤需要完成另一个步骤的表单，或者需要完成多个步骤才能提交整个表单的表单，步进器特别有用。
""";


const String _Text1 =
"""###  
> 代码参考 Demo01
```
常用属性:
currentStep → int - 步骤位置。
onStepCancel → VoidCallback - 点击 cancel 时触发。
onStepContinue → VoidCallback - 点击 continue 时触发。
onStepTapped → ValueChanged - 状态改变时触发。
steps → List - 步骤内容。
type → StepperType - 摆放方向，默认是垂直的，可以设置为水平的

 new Column(
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
```
""";


class StepperWidget extends BasefulWidget {

  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(title: Text(title)),
        body: new SingleChildScrollView(
          child: Column(
            children: <Widget>[
              MarkdownBody(data: _Text0),
              SizedBox(height: 20.0), // 间距
              MarkdownBody(data: _Text1),
              SizedBox(
                child: Demo01(),
              ),
              SizedBox(height: 40.0),// 间距
            ],
          ),
        ),
      );
  }

}