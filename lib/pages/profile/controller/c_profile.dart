import 'package:e_commerce/pages/profile/model/m_profile.dart';
import 'package:e_commerce/util/path_icons.dart';

class ControllerProfile {
  static final List<ModelProfile> _dataModel = [
    ModelProfile(
      title: 'My Account',
      icon: PathIcons.user,
      onPress: () {},
    ),
    ModelProfile(
      title: 'Notification',
      icon: PathIcons.bell,
      onPress: () {},
    ),
    ModelProfile(
      title: 'Setting',
      icon: PathIcons.settings,
      onPress: () {},
    ),
    ModelProfile(
      title: 'Help Center',
      icon: PathIcons.questionMark,
      onPress: () {},
    ),
    ModelProfile(
      title: 'Log Out',
      icon: PathIcons.logOut,
      onPress: () {},
    ),
  ];
  static List<ModelProfile> get dataModel => _dataModel;
  static int get dataLength => _dataModel.length;
}
