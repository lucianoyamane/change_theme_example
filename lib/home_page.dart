import 'package:change_theme_example/theme_selector_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.list,
            ),
            tooltip: 'Theme selector',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ThemeSelectorPage()));
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // do nothing
        },
        child: const Icon(
          Icons.done,
        ),
      ),
      body: const MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a search term',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your username',
            ),
          ),
        ),
      ],
    );
  }
}
