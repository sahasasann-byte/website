import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
const siteUrl=String.fromEnvironment('KING_BRO_URL',defaultValue:'https://kingbro-90dw.onrender.com');
void main()=>runApp(const App());
class App extends StatelessWidget{const App({super.key});@override Widget build(BuildContext c)=>const MaterialApp(debugShowCheckedModeBanner:false,title:'KING BRO',home:Home());}
class Home extends StatefulWidget{const Home({super.key});@override State<Home> createState()=>_Home();}
class _Home extends State<Home>{late final WebViewController w;int p=0;@override void initState(){super.initState();w=WebViewController()..setJavaScriptMode(JavaScriptMode.unrestricted)..setBackgroundColor(const Color(0xFF07131D))..setNavigationDelegate(NavigationDelegate(onProgress:(x)=>setState(()=>p=x)))..loadRequest(Uri.parse(siteUrl));}@override Widget build(BuildContext c)=>PopScope(canPop:false,onPopInvokedWithResult:(d,r)async{if(!d&&await w.canGoBack())await w.goBack();},child:Scaffold(backgroundColor:const Color(0xFF07131D),body:SafeArea(child:Stack(children:[WebViewWidget(controller:w),if(p<100)LinearProgressIndicator(value:p/100,color:const Color(0xFFF2CC72),backgroundColor:const Color(0xFF07131D),minHeight:2)]))));}}
