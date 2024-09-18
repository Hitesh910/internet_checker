part of '../../internet_checker.dart';
class InternetCheckerProvider with ChangeNotifier {
  Connectivity checkConnectivity = Connectivity();
  bool isInternet = true;

  void checkInternet() {
    checkConnectivity.onConnectivityChanged.listen(
          (event) {
        if (event.contains(ConnectivityResult.none)) {
          //no internet
          isInternet = false;
        } else {
          isInternet = true;
        }
        print(isInternet);
        notifyListeners();
      },
    );
  }

  Future<void> firstTime()
  async {
    List<ConnectivityResult> connectivityResult = await Connectivity().checkConnectivity();

    if (connectivityResult.contains(ConnectivityResult.none)) {
      //no internet
      isInternet = false;
    } else {
      isInternet = true;
    }

    notifyListeners();
  }
}