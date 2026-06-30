import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MembersScreen extends StatelessWidget {
  const MembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7FB),
      appBar: AppBar(
        title: const Text("Family Members"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.go('/add-member');
        },
        icon: const Icon(Icons.person_add),
        label: const Text("Add Member"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: _memberCard(
                    context,
                    title: "Male",
                    count: 8,
                    icon: Icons.man,
                    color: Colors.blue,
                    members: const [
                      "👑 Abhishek (Admin)",
                      "Akshay",
                      "Anuj",
                      "Ankush",
                      "Vinay",
                      "Vikas",
                      "Vivek",
                      "Vishal",
                      "Siddhant",
                      "Alok",
                      "vishnu",
                      "Prasant",
                      "Rudra",
                      "Anirudra",
                      "Aditya",
                      "Shailesh"
                      "Anil",
                      "Vijay",
                      "pravind",


                    ],
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: _memberCard(
                    context,
                    title: "Female",
                    count: 6,
                    icon: Icons.woman,
                    color: Colors.pink,
                    members: const [
                      "Pooja",
                      "Neha",
                      "Anjali",
                      "Priya",
                      "Kajal",
                      "Rani",
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Text(
              "Tap on a card to view all members",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }

  Widget _memberCard(
      BuildContext context, {
        required String title,
        required int count,
        required IconData icon,
        required Color color,
        required List<String> members,
      }) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        _showMembers(context, title, members);
      },
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: color, width: 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 35,
              backgroundColor: color,
              child: Icon(
                icon,
                size: 40,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "$count Members",
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  void _showMembers(
      BuildContext context,
      String title,
      List<String> members,
      ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      builder: (_) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.75,
          child: Column(
            children: [
              const SizedBox(height: 10),
              Container(
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "$title Members",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),

              Expanded(
                child: ListView.builder(
                  itemCount: members.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 6,
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: title == "Male"
                              ? Colors.blue
                              : Colors.pink,
                          child: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                        title: Text(
                          members[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}