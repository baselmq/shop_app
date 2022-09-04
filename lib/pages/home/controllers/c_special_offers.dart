import 'package:e_commerce/pages/home/models/m_special_offers.dart';
import 'package:e_commerce/util/path_images.dart';

class ControllerSpecialOffers {
  static final List<ModelSpecialOffers> _dataModel = [
    ModelSpecialOffers(
      image: PathImages.imageBanner2,
      category: 'SmartPhone',
      numOfBrands: 18,
      onPress: () {},
    ),
    ModelSpecialOffers(
      image: PathImages.imageBanner3,
      category: 'Fashion',
      numOfBrands: 24,
      onPress: () {},
    )
  ];
  static List<ModelSpecialOffers> get dataModel => _dataModel;
  static int get dataLength => _dataModel.length;
}
