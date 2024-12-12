```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
      print('Data fetched successfully: $jsonData'); // Indicate success
    } else {
      throw Exception('Failed to load data: Status code ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e'); // Log the error for debugging
    //Consider more sophisticated error handling such as displaying an error message to the user
    //rethrow; //You might choose to rethrow only if you need higher level handling, depending on application design
  }
}
```