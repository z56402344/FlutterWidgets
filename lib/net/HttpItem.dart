
import 'dart:collection';

import 'dart:convert';

import 'package:myapp/net/HttpController.dart';
import 'package:myapp/common/Ikey.dart';


abstract class ILis extends Function{

}

abstract class IOKLis extends ILis{

  bool onHttpOK(int id,int code,String msg, dynamic res);
}

abstract class IErrLis extends ILis{

  void onHttpError(int id,int errCode,String errMsg,Exception e);
}

abstract class IFinishLis extends ILis{

  void onHttpFinish(int id,bool bOk);
}

abstract class IProgressLis extends ILis{

  void onProgress(int id, int cur, int total);
}

abstract class IOKErrLis implements IOKLis,IErrLis{

}

abstract class IAllLis implements IOKLis,IErrLis,IFinishLis{

}

class HttpItem {

   ILis _lis;
   String _url;
   int _id;
   HashMap<String,Object> _map = new HashMap();

   HttpItem setId(int id){
     _id = id;
     return this;
   }

   HttpItem setUrl(String url){
     _url = url;
     return this;
   }

   HttpItem setListener(ILis lis){
     _lis = lis;
     return this;
   }

   HttpItem putStr(String k, String v){
     _map[k] = v;
     return this;
   }

   HttpItem putInt(String k, int v){
     _map[k] = v;
     return this;
   }

   HttpItem putDouble(String k, double v){
     _map[k] = v;
     return this;
   }

   void post(){
     bool bOK = false;
     HttpController.post(_url, (data) {
       if (data != null) {
        final body = jsonDecode(data.toString());
        final code = body[CODE];
        final msg = body[MSG];
        final res = body[RES];
        print("body=$body");
        print("code=$code, msg=$msg, res=$res");
        bOK = onOK(code,msg,res);

       }else{
         onError(-1,null,null);
       }

       onFinish(bOK);
     }, params: _map,errorCallback: (errData){
       String err = errData.toString();
       print("err= $err");

     });
   }

   void get(){
     bool bOK = false;
     HttpController.get(_url, (data){
       if (data != null) {
         final body = jsonDecode(data.toString());
         final code = body[CODE];
         final msg = body[MSG];
         final res = body[RES];
         print("body=$body");
         print("code=$code, msg=$msg, res=$res");
         bOK = onOK(code,msg,res);

       }else{
         onError(-1,null,null);
       }

       onFinish(bOK);
     },params: _map,errorCallback: (errData){
       String err = errData.toString();
       print("err= $err");

     });
   }

   bool onOK(int code,String msg, dynamic res){
      if(_lis != null && _lis is IOKLis){
        IOKLis lis = _lis;
        return lis.onHttpOK(_id,code,msg,res);
      }
   }

   void onError(int errCode, String errMsg, Exception e){
     if(_lis != null && _lis is IErrLis){
       IErrLis lis = _lis;
       lis.onHttpError(_id, errCode, errMsg, null);
     }
   }

   void onFinish(bool bOk){
     if(_lis != null && _lis is IFinishLis){
       IFinishLis lis = _lis;
       lis.onHttpFinish(_id,bOk);
     }
   }
}