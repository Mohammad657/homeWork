import 'package:flutter/material.dart';
import 'package:template/widgets/Custome_box.dart';
import 'package:template/widgets/Custome_card.dart';
import 'package:template/widgets/custom_button.dart';
import 'package:template/widgets/welcome_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 15,
      children: [
        SizedBox(height: 40),
        WelcomeCard(),
        Text(
          "Quick State",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomeBox(
              icon: Icons.people,
              title: "1,234",
              subtitle: "User",
              iconColor: Colors.purple,
            ),
            CustomeBox(
              icon: Icons.shopping_cart,
              title: "4.8",
              subtitle: "Rateing",
              iconColor: Colors.orange,
            ),
            CustomeBox(
              icon: Icons.trending_up_sharp,
              title: "98%",
              subtitle: "Success",
              iconColor: Colors.blue,
            ),
          ],
        ),
        Text(
          "Features",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Column(
          children: [
            CustomeCard(
              icon: Icons.speed,
              title: "Fast performance",
              subtitle: "Lightning fast app performance",
              iconColor: Color(0xff8A71C5),
            ),
            CustomeCard(
              icon: Icons.security,
              title: "Secure",
              subtitle: "your data is safe with us",
              iconColor: Color(0xff1C98F6),
            ),
            CustomeCard(
              icon: Icons.palette,
              title: "Beutiful Ui",
              subtitle: "Modren and clean design",
              iconColor: Color(0xffFE9706),
            ),
          ],
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(text: "Settings", backgroundColor: Color(0xff2096F3)),
            CustomButton(text: "Profile", backgroundColor: Color(0xffFF9700)),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
