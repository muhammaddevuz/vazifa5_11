import 'dart:math';

class VazifaBase {
  List<int> search(List list, var item) {
    var linerWatch=Stopwatch()..start();
    int linear = linearSearch(list, item);
    linerWatch.stop();
    var binaryWatch=Stopwatch()..start();
    int binary = binarySearch(list, item, 0, list.length);
    binaryWatch.stop();
    var jumpWatch=Stopwatch()..start();
    int jump = jumpSearch(list, item, list.length);
    binaryWatch.stop();
    print("time for linear: ${linerWatch.elapsedMicroseconds}\ntime for binary: ${binaryWatch.elapsedMicroseconds}\ntime for jump search: ${jumpWatch.elapsedMicroseconds}");
    return[linear, binary, jump];
  }

  int linearSearch(List list, var item) {
    for (var i = 0; i < list.length; i++) {
      if (list[i] == item) {
        return i;
      }
    }
    return -1;
  }

  int binarySearch(List list, item, int start, int end) {

    if (start <= end) {
      //find middle index of list
      int mid = (end + start) ~/ 2;
      if (item == list[mid]) {
        return mid;
      }
      if (item < list[mid]) {
        return binarySearch(list, item, start, mid - 1);
      }
      return binarySearch(list, item, mid + 1, end);
    }
    return -1;
  }

  int jumpSearch(List list, int item, int end) {
    int step = sqrt(end).toInt(); // Calculate the block size to jump
    int prev = 0;

    // Finding the block where the element is present (if it is present)
    while (list[min(step, end) - 1] < item) {
      prev = step;
      step += sqrt(end).toInt();
      if (prev >= end) {
        return -1;
      }
    }

    // Doing a linear search for item in the block beginning with prev
    while (list[prev] < item) {
      prev++;
      // If we reached the next block or end of the array, element is not present.
      if (prev == min(step, end)) {
        return -1;
      }
    }

    // If element is found
    if (list[prev] == item) {
      return prev;
    }

    return -1;
  }
}
