# Silent Failure in Asynchronous Dart Code

This repository demonstrates a common error in Dart asynchronous programming: unhandled exceptions within asynchronous functions.  The `bug.dart` file shows code where an exception during an HTTP request is caught, but not handled effectively, potentially leading to silent failures.

The solution, `bugSolution.dart`, shows how to improve the error handling to make failures more apparent.