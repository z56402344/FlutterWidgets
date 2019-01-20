import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:myapp/common/BasefulWidget.dart';
import 'package:myapp/widget/materialWidgets/showWidgets/Tooltip/demo01.dart';

const String title = "DataTable Widget";

const String _Text0 =
"""### **描述**
> $title 
- 数据表显示原始数据集。它们通常出现在桌面企业产品中。DataTable Widget实现这个组件
""";


const String _Text1 =
"""###  
> 代码参考 Demo01
```
DataTable参数
  columns（表头）	List
  rows（内容行）	List
  sortColumnIndex（排序列索引）	int
  sortAscending（升序排序）	bool
  onSelectAll（点击全选）	ValueSetter
  
```
""";


class DataTableWidget extends BasefulWidget {

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