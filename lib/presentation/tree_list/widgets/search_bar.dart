import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  SearchBar({Key? key}) : super(key: key);

  final TextEditingController _controller = TextEditingController();

  // This function is triggered when the clear buttion is pressed
  void _clearTextField() {
    // Clear everything in the text field
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          controller: _controller,
          onChanged: (value) {},
          decoration: InputDecoration(
            labelText: 'Search',
            prefixIcon: const Icon(Icons.search),
            suffixIcon: _controller.text.isEmpty
                ? null // Show nothing if the text field is empty
                : IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: _clearTextField,
                  ), // Show the clear button if the text field has something
          ),
        ));
  }
}
