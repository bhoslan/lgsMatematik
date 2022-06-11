import 'package:flutter/material.dart';
import 'package:lgsmatematik/data/user.dart';
import 'package:lgsmatematik/screens/edit_profile_page.dart';
import 'package:lgsmatematik/utils/user_preferences.dart';

import '../widget/appbar_widget.dart';
import '../widget/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath : user.imagePath,
            onClicked : () async {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfilePage()));
            }
          ),
          const SizedBox(height: 24,),
          buildName(user),
          const SizedBox(height: 24,),
          buildAbout(user),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
    children: [
      Text(
        user.name,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
      const SizedBox(height: 4),
      Text(
        user.email,
        style: const TextStyle(color: Colors.grey),
      )
    ],
  );

  Widget buildAbout(User user) {
   return Container(
     padding: const EdgeInsets.symmetric(horizontal: 48),
     child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Hakkında",
          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          const SizedBox(height: 16),
          Text(user.about,
          style: TextStyle(fontSize: 16,height: 1.4),)
          ],


      ),
   );
  }
}
