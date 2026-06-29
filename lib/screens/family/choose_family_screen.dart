import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChooseFamilyScreen extends StatelessWidget {
  const ChooseFamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose Family"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.family_restroom,
              size: 100,
              color: Colors.blue,
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  context.go('/create-family');
                },
                child: const Text("Create Family"),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: OutlinedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Join Family Coming Soon"),
                    ),
                  );
                },
                child: const Text("Join Family"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}