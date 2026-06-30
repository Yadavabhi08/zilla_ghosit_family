import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateFamilyScreen extends StatefulWidget {
  const CreateFamilyScreen({super.key});

  @override
  State<CreateFamilyScreen> createState() => _CreateFamilyScreenState();
}

class _CreateFamilyScreenState extends State<CreateFamilyScreen> {
  final TextEditingController familyNameController =
  TextEditingController();

  final TextEditingController familyDescriptionController =
  TextEditingController();

  @override
  void dispose() {
    familyNameController.dispose();
    familyDescriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Family"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),

            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue.shade100,
              child: const Icon(
                Icons.family_restroom,
                size: 55,
                color: Colors.blue,
              ),
            ),

            const SizedBox(height: 30),

            TextField(
              controller: familyNameController,
              decoration: InputDecoration(
                hintText: "Family Name",
                prefixIcon: const Icon(Icons.groups),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: familyDescriptionController,
              maxLines: 3,
              decoration: InputDecoration(
                hintText: "Description (Optional)",
                prefixIcon: const Icon(Icons.description),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  if (familyNameController.text.trim().isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Please enter family name"),
                      ),
                    );
                    return;
                  }

                  context.go('/home');
                },
                child: const Text(
                  "Create Family",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}