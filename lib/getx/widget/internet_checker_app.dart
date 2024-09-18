part of '../../internet_checker.dart';
class InternetCheckerAppGetX extends StatefulWidget {
  const InternetCheckerAppGetX({super.key, this.title, this.routes, this.home, this.initialRoute, this.debugShowCheckedModeBanner});
  final Map<String,WidgetBuilder>? routes;
  final String? initialRoute,title;
  final Widget? home;
  final bool? debugShowCheckedModeBanner;

  @override
  State<InternetCheckerAppGetX> createState() => _InternetCheckerAppGetXState();
}

class _InternetCheckerAppGetXState extends State<InternetCheckerAppGetX> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    InternetChecker.internetController.firstTime();
    InternetChecker.internetController.checkInternet();
  }
  @override
  Widget build(BuildContext context) {
    return Obx(() =>
    widget.home==null&&widget.routes==null?
    GetMaterialApp(
      debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner??true,
      title: widget.title??'Flutter Demo',
     ):
    widget.routes!=null&&widget.home!=null?
    GetMaterialApp(
      debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner??true,
      title: widget.title??'Flutter Demo',
      home: widget.home,
      routes: widget.routes!,
      initialRoute: widget.initialRoute??"/",):
    widget.home==null&&widget.routes!=null?GetMaterialApp(
      debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner??true,
      title: widget.title??'Flutter Demo',
      routes: widget.routes!,
      initialRoute: widget.initialRoute??"/",):
    GetMaterialApp(
      debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner??true,
      title: widget.title??'Flutter Demo',
      home: widget.home,));
  }
}