class Insertion {
  static List<int> insertionSort(List<int> myList) {
    // Start from the second element (index 1)
    for (int i = 1; i < myList.length; i++) {
      int temp = myList[i];
      int j = i - 1;

      // Shift elements of myList[0..i-1] that are greater than temp
      // to one position ahead of their current position
      while (j >= 0 && myList[j] > temp) {
        myList[j + 1] = myList[j];
        j--;
      }

      // Place temp in its correct sorted position
      myList[j + 1] = temp;
    }
    return myList;
  }
}
