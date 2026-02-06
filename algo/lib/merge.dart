class MergeSort {
  // Helper function to merge two sorted lists
  static List<int> merge(List<int> list1, List<int> list2) {
    List<int> combined = [];
    int i = 0;
    int j = 0;

    while (i < list1.length && j < list2.length) {
      if (list1[i] < list2[j]) {
        combined.add(list1[i]);
        i++;
      } else {
        combined.add(list2[j]);
        j++;
      }
    }

    // Add remaining elements from list1
    while (i < list1.length) {
      combined.add(list1[i]);
      i++;
    }

    // Add remaining elements from list2
    while (j < list2.length) {
      combined.add(list2[j]);
      j++;
    }

    return combined;
  }

  static List<int> sort(List<int> list) {
    if (list.length <= 1) return list;

    // Use ~/ for integer division in Dart
    int mid = list.length ~/ 2;

    // sublist(start, end) is the equivalent of list[start:end]
    List<int> left = sort(list.sublist(0, mid));
    List<int> right = sort(list.sublist(mid));

    return merge(left, right);
  }
}
