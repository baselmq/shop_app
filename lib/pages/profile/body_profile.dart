import 'package:e_commerce/components/app_bar_custom.dart';
import 'package:e_commerce/pages/profile/components/card_profile.dart';
import 'package:e_commerce/pages/profile/components/circular_image.dart';
import 'package:e_commerce/pages/profile/controller/c_profile.dart';
import 'package:e_commerce/pages/profile/model/m_profile.dart';
import 'package:flutter/material.dart';

class BodyProfile extends StatelessWidget {
  const BodyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ModelProfile> data = ControllerProfile.dataModel;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const AppBarCustom(
          title: 'Profile',
          fillIcon: true,
          centerTitle: false,
        ),
        body: Column(
          children: [
            const Expanded(child: CircularImage()),
            Expanded(
              flex: 3,
              child: ListView.builder(
                itemCount: ControllerProfile.dataLength,
                itemBuilder: (context, index) {
                  ModelProfile snapShot = data[index];
                  return CardProfile(
                    title: snapShot.title,
                    icon: snapShot.icon,
                    onPress: snapShot.onPress,
                  );
                },
              ),
            ),
          ],
        ));
  }
}
