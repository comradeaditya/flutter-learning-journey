import 'package:flutter/material.dart';

class TextThemeScreen extends StatelessWidget{
  const TextThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Theme"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //align left
          children: [

            Text(
              "Headline Large",
              style: Theme.of(context).textTheme.headlineLarge,
            ),

            const SizedBox(height: 20),

            Text(
              "Body Large text used for important content.",
              style: Theme.of(context).textTheme.titleLarge,
            ),

            const SizedBox(height: 12),

            Text(
              "Body Medium text used for secondary information.",
              style: Theme.of(context).textTheme.bodyLarge,
            ),

            const SizedBox(height: 12),

            Text(
              "Body Medium text used for secondary information.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Label Large Button",
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}