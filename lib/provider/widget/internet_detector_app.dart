part of '../../internet_detector.dart';
class InternetDetectorAppProvider extends StatefulWidget {
  const InternetDetectorAppProvider({super.key, required this.otherProviders, this.routes, this.home, this.initialRoute, this.title, this.debugShowCheckedModeBanner});
  final List<SingleChildWidget> otherProviders;
  final Map<String,WidgetBuilder>? routes;
  final String? initialRoute,title;
  final Widget? home;
  final bool? debugShowCheckedModeBanner;

  @override
  State<InternetDetectorAppProvider> createState() => _InternetDetectorAppProviderState();
}

class _InternetDetectorAppProviderState extends State<InternetDetectorAppProvider> {
  List <SingleChildWidget> otherProvider=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    otherProvider.addAll(List.from(widget.otherProviders));
    otherProvider.add(ChangeNotifierProvider.value(value: InternetCheckerProvider()));
  }
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: otherProvider,
      child: Consumer<InternetCheckerProvider>(builder: (context, value, child) {
        value.firstTime();
        value.checkInternet();
        return widget.home==null&&widget.routes==null?
        MaterialApp(
          debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner??true,
          title: widget.title??'Flutter Demo',
        ):
        widget.routes!=null&&widget.home!=null?
        MaterialApp(
          debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner??true,
          title: widget.title??'Flutter Demo',
          home: widget.home,
          routes: widget.routes!,
          initialRoute: widget.initialRoute??"/",):
        widget.home==null&&widget.routes!=null?MaterialApp(
          debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner??true,
          title: widget.title??'Flutter Demo',
          routes: widget.routes!,
          initialRoute: widget.initialRoute??"/",):
        MaterialApp(
          debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner??true,
          home: widget.home,)
        ;
      }),
    );
  }
}