import 'package:get/get.dart';

class ArrayController extends GetxController {
  List<int> arr1 = [2, 3, 1, 3, 2, 4, 6, 7, 9, 2, 19];
  List<int> arr2 = [2, 1, 4, 3, 9, 6];
  var result = [].obs;
  var isLoading = false.obs;

  void customShort() {
    isLoading.value = true;
    // result.clear();
    for (var i = 0; i < arr2.length - 1; i++) {
      for (var j = 0; j < arr1.length - 1; j++) {
        if (arr1[j] == arr2[i]) {
          result.add(arr2[i]);
          arr1.removeAt(j);
          j--;
        }
      }
    }

    result.value = result.value + arr1;
    isLoading.value = false;
  }
}
