class Selection {
  static List<int> selectionSort(List<int> myList) {
    for (int i = 0; i < myList.length - 1; i++) {
      int minIndex = i;

      // Scan the remaining unsorted part of the list
      for (int j = i + 1; j < myList.length; j++) {
        if (myList[j] < myList[minIndex]) {
          minIndex = j;
        }
      }

      // Only swap if a smaller number was actually found
      if (minIndex != i) {
        int temp = myList[i];
        myList[i] = myList[minIndex];
        myList[minIndex] = temp;
      }
    }
    return myList;
  }
}
