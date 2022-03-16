import 'package:get/get.dart';
import 'package:rick_and_morty/API/services.dart';
import 'package:rick_and_morty/models/characters.dart';
import 'package:rick_and_morty/models/results.dart';

class CharactersController extends GetxController{

  var charactersList = <Result>[].obs;
  var service = Service();

  void onInit(){
    getAllCharacters();
    super.onInit();

  }
  getAllCharacters() async{
    var result = await service.getAllCharacters();
    charactersList.value = result!;
  }   

}