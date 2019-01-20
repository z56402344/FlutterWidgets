import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../../../common/Ikey.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

const String _Text0 =
"""### **自定义swiper** 
> 主要属性
```
 new Swiper(
  ......
  layout: SwiperLayout.CUSTOM,
  customLayoutOption: new CustomLayoutOption(
      startIndex: -1,
      stateCount: 3
  ).addRotate([
    -45.0/180,
    0.0,
    45.0/180
  ]).addTranslate([
    new Offset(-370.0, -40.0),
    new Offset(0.0, 0.0),
    new Offset(370.0, -40.0)
  ]),
  itemWidth: 300.0,
  itemHeight: 200.0,
)
```
""";

class SwiperPage extends BasefulWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('轮播组件'),
      ),
      body: new SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MarkdownBody(data: _Text0),
            SizedBox(height: 20.0), // 间距
            Container(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                child: Swiper(
                    layout: SwiperLayout.CUSTOM,
                    customLayoutOption: new CustomLayoutOption(
                        startIndex: -1,
                        stateCount: 3
                    ).addRotate([
                      -45.0/180,
                      0.0,
                      45.0/180
                    ]).addTranslate([
                      new Offset(-370.0, -40.0),
                      new Offset(0.0, 0.0),
                      new Offset(370.0, -40.0)
                    ]),
                    itemWidth: 300.0,
                    itemHeight: 200.0,
                    itemBuilder:_swiperBuilder,
                    itemCount:  urls.length
                )),
          ],
        ),
      )
    );
  }
  Widget _swiperBuilder(BuildContext context, int index) {
    return (Image.network(urls[index],fit: BoxFit.fill));
  }
}







