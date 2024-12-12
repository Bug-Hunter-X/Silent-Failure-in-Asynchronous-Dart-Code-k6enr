```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success!
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle error
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle exception
    print('Error: $e');
    rethrow; // Re-throw to allow higher-level error handling
  }
}
```