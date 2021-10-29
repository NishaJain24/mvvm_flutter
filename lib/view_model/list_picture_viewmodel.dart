import 'package:mvvm_flutter/model/picsum_model.dart';
import 'package:mvvm_flutter/services/services.dart';

class ListPictureViewModel {
  List<PictureViewModel>? pictures;
  Future<void> fetchPictures() async{
    final apiResult = await Service().fetchPictures();
    this.pictures = apiResult.map((e) => PictureViewModel(e)).toList();
  }
}

class PictureViewModel {
  final PicSumModel? picSumModel;

  PictureViewModel(this.picSumModel);
}
