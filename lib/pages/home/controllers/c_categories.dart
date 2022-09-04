import 'package:e_commerce/pages/home/models/m_categories.dart';
import 'package:e_commerce/util/path_icons.dart';

class ControllerCategories {
  static final List<ModelCategories> _dataModel = [
    ModelCategories(
      icon: PathIcons.flashIcon,
      text: 'Flash Deal',
      onPress: () {},
    ),
    ModelCategories(
      icon: PathIcons.billIcon,
      text: 'Bill',
      onPress: () {},
    ),
    ModelCategories(
      icon: PathIcons.gameIcon,
      text: 'Game',
      onPress: () {},
    ),
    ModelCategories(
      icon: PathIcons.giftIcon,
      text: 'Daily Gift',
      onPress: () {},
    ),
    ModelCategories(
      icon: PathIcons.discover,
      text: 'More',
      onPress: () {},
    ),
  ];
  static List<ModelCategories> get dataModel => _dataModel;
  static int get dataLength => _dataModel.length;
}
