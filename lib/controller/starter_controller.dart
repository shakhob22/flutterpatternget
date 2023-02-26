
import 'package:get/get.dart';

import '../model/post_model.dart';
import '../service/http_service.dart';

class StarterController extends GetxController {
  bool isLoading = false;
  List<Post> items = [];

  void apiPostList() async {
    isLoading = true;
    update();
    var response = await Network.GET(Network.API_LIST, Network.paramsEmpty());

    if (response != null) {
      items = Network.parsePostList(response);
    } else {
      items = [];
    }
    isLoading = false;
    update();
  }
}
