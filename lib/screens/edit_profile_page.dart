import 'package:flutter/material.dart';
import 'package:lgsmatematik/utils/user_preferences.dart';
import 'package:lgsmatematik/widget/appbar_widget.dart';
import 'package:lgsmatematik/widget/profile_widget.dart';

import '../data/user.dart';
import '../widget/textfield_widget.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 32),
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
              imagePath: user.imagePath,
              onClicked: () async {},
              isEdit : false,
          ),
          const SizedBox(height: 24,),
          TextFieldWidget(
            label: "Ad-Soyad",
            text:user.name,
            onSubmitted : (name){ }
          ),
          const SizedBox(height: 24,),
          TextFieldWidget(
              label: "E-mail",
              text:user.email,
              onSubmitted : (email){}
          ),
          const SizedBox(height: 24,),
          TextFieldWidget(
              label: "Hakkımda",
              text:user.about,
              maxLines:5,
              onSubmitted : (about){}
          ),
        ],
      ),
    );
  }
}
