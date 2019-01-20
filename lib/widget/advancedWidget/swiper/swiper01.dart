import 'package:flutter/material.dart';
import '../../../common/BasefulWidget.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../../../common/Ikey.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

const String _Text0 =
"""###  
> 主要属性
```
 new Swiper(
   itemBuilder: (BuildContext context, int index) {
    return new Image.network(
      urls[index],
      fit: BoxFit.fill,
    );
  },
  itemCount: urls.length //item数量
  autoplay: true,//默认3秒展示下一页
  onTap: (),//点击事件
  ......
 ）
```
""";

class SwiperNormalPage extends BasefulWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('swiper组件'),
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
                  itemBuilder: _swiperBuilder,
                  itemCount: urls.length,
                  pagination: new SwiperPagination(
                      builder: DotSwiperPaginationBuilder(
                        color: Colors.black54,
                        activeColor: Colors.white,
                      )),
                  control: new SwiperControl(),
                  scrollDirection: Axis.horizontal,
                  autoplay: true,
                  onTap: (index) => print('点击了第$index个'),
                )),
          ],
        ),
      )
    );
  }

  Widget _swiperBuilder(BuildContext context, int index) {
    return (Image.network(urls[index], fit: BoxFit.fill));
  }
}