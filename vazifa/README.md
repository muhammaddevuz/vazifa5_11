# Search Algorithms in Dart

This project demonstrates various search algorithms implemented in Dart, including binary search and jump search. The project also includes functionality to measure the time taken for searching operations using Dart's `Stopwatch` class.

## Features

- **Binary Search**: Efficient algorithm for finding an element in a sorted list.
- **Jump Search**: Searches for an element in a sorted list by jumping ahead by a fixed number of steps.
- **Performance Measurement**: Uses `Stopwatch` to measure the time taken by search algorithms.

## Getting Started

### Prerequisites

- Dart SDK

### Installing

1. Clone the repository:
    ```sh
    git clone https://github.com/yourusername/search-algorithms-dart.git
    ```
2. Navigate to the project directory:
    ```sh
    cd search-algorithms-dart
    ```

### Usage

1. **Binary Search**:
    ```dart
    import 'binary_search.dart';

    void main() {
      List<int> sortedList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
      int itemToFind = 7;

      // Start the stopwatch
      Stopwatch stopwatch = Stopwatch()..start();

      int index = binarySearch(sortedList, itemToFind, 0, sortedList.length - 1);

      // Stop the stopwatch
      stopwatch.stop();

      if (index != -1) {
        print("Item found at index: $index");
      } else {
        print("Item not found.");
      }

      print("Time taken for search: ${stopwatch.elapsedMicroseconds} microseconds");
    }
    ```

2. **Jump Search**:
    ```dart
    import 'jump_search.dart';

    void main() {
      List<int> sortedList = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];
      int itemToFind = 13;

      // Start the stopwatch
      Stopwatch stopwatch = Stopwatch()..start();

      int index = jumpSearch(sortedList, itemToFind);

      // Stop the stopwatch
      stopwatch.stop();

      if (index != -1) {
        print("Item found at index: $index");
      } else {
        print("Item not found.");
      }

      print("Time taken for search: ${stopwatch.elapsedMicroseconds} microseconds");
    }
    ```

### Running the Tests

To run tests, use the following command:
```sh
dart test
