






import 'package:surf_flutter_summer_school_24/model/photo/photo_model.dart';
import 'package:surf_flutter_summer_school_24/repository_provider/repository/photo_repository/i_photo_repository.dart';

class MockPhotoRepository implements IGlobalPhotoRepository{
  final List<PhotoModel> photos = [
    PhotoModel(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmCy16nhIbV3pI1qLYHMJKwbH2458oiC9EmA&s'),
    PhotoModel(imageUrl: 'https://fps.cdnpk.net/images/home/subhome-ai.webp?w=649&h=649'),
    PhotoModel(imageUrl: 'https://static.gettyimages.com/display-sets/creative-landing/images/GettyImages-1448734171.jpg'),
    PhotoModel(imageUrl: 'https://images.ctfassets.net/hrltx12pl8hq/01rJn4TormMsGQs1ZRIpzX/16a1cae2440420d0fd0a7a9a006f2dcb/Artboard_Copy_231.jpg?fit=fill&w=600&h=600')
  ];


  MockPhotoRepository();



  @override
  Future<List<PhotoModel>> getPhotos() async{
    await Future.delayed(Duration(seconds: 4));
    return photos;
  }
  
  @override
  Future<int> getCountPhotos() async {
    await Future.delayed(Duration(seconds: 4));
    return photos.length;
  }

  @override
  Future<PhotoModel> getPhotoByIndexInRepository(int index) async {
    return photos[index];
  }

}