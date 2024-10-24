import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Profile",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff090F47),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xff4157FF),
                      width: 2,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('profile.webp'), 
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, Wajiha Lakhany",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff090F47),
                      ),
                    ),
                    Text(
                      "Welcome to Quick Medical Store",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Expanded(
              child: ListView(
                children: [
                  _buildProfileOption(
                    context,
                    icon: Icons.person_outline,
                    text: "Edit Profile",
                  ),
                  _buildProfileOption(
                    context,
                    icon: Icons.shopping_bag_outlined,
                    text: "My orders",
                  ),
                  _buildProfileOption(
                    context,
                    icon: Icons.credit_card_outlined,
                    text: "Billing",
                  ),
                  _buildProfileOption(
                    context,
                    icon: Icons.help_outline,
                    text: "Faq",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildProfileOption(BuildContext context, {required IconData icon, required String text}) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: Color(0xff4157FF)),
          title: Text(
            text,
            style: TextStyle(fontSize: 16, color: Color(0xff090F47)),
          ),
          trailing: Icon(Icons.chevron_right, color: Colors.grey),
          onTap: () {
          },
        ),
        Divider(),
      ],
    );
  }
}