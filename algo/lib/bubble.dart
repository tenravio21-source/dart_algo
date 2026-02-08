class Bubble {
  static List<int> bubbleSort(List<int> myList) {
    for (int i = myList.length - 1; i > 0; i--) {
      for (int j = 0; j < i; j++) {
        if (myList[j] > myList[j + 1]) {
          int temp = myList[j];
          myList[j] = myList[j + 1];
          myList[j + 1] = temp;
        }
      }
    }
    return myList;
  }
}
