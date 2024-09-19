part of '../../internet_detector.dart';
class InternetController extends GetxController
{
  RxBool isInternet = false.obs;

  void checkInternet()
  {
    Connectivity checkConnectivity = Connectivity();

    checkConnectivity.onConnectivityChanged.listen((event) {
      if(event.contains(ConnectivityResult.none))
      {
        isInternet.value = false;
      }
      else
      {
        isInternet.value = true;
      }
    },);
  }

  Future<void> firstTime()
  async {
    List<ConnectivityResult> connectivityResult = await Connectivity().checkConnectivity();

    if (connectivityResult.contains(ConnectivityResult.none)) {
      //no internet
      isInternet.value = false;
    } else {
      isInternet.value = true;
    }

  }
}