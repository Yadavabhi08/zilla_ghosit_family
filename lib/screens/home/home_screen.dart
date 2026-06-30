import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Zilla Ghosit Family"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome 👋",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Yadav Family",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 30),

            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.people,
                  color: Colors.blue,
                ),
                title: const Text("Family Members"),
                subtitle: const Text("View all family members"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  context.go('/members');
                },
              ),
            ),

            const SizedBox(height: 15),

            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.chat,
                  color: Colors.green,
                ),
                title: const Text("Family Chat"),
                subtitle: const Text("Chat with family"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  context.go('/chat');
                },
              ),
            ),

            const SizedBox(height: 15),

            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.notifications,
                  color: Colors.orange,
                ),
                title: const Text("Invitations"),
                subtitle: const Text("View invitations"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  context.go('/invitation');
                },
              ),
            ),

            const SizedBox(height: 15),

            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.purple,
                ),
                title: const Text("Profile"),
                subtitle: const Text("Manage your profile"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  context.go('/profile');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}