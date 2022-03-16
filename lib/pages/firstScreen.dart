import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rick_and_morty/controller/characters_controller.dart';
import 'package:rick_and_morty/pages/secondScreen.dart';

class FirstScreen extends GetView<CharactersController> {
  @override
  Widget build(BuildContext context) {
    final CharactersController characterCtrl = Get.put(CharactersController());
    return Scaffold(
      backgroundColor: Color(0xFF24282F),
      appBar: AppBar(
        title: Text(
          'alfred',
          style: GoogleFonts.getFont('Open Sans',
              fontSize: 26,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic),
        ),
      ),
      body: Obx(
        () => ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Card(
                    color: Color(0xFF3C3E44),
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                            height: MediaQuery.of(context).size.height * 0.18,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: GestureDetector(
                                onTap: () => Get.to(() => SecondScreen(characterCtrl.charactersList[index])),

                                child: Image.network(
                                  characterCtrl.charactersList[index].image,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: ListTile(
                            title: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Text(
                                
                                characterCtrl.charactersList[index].name,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.getFont('Creepster',
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  characterCtrl.charactersList[index].status,
                                  style: GoogleFonts.getFont('Creepster',
                                      fontSize: 18, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  characterCtrl.charactersList[index].species,
                                  style: GoogleFonts.getFont('Creepster',
                                      color: Color(0xFF9e9e9e), fontSize: 20),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () => Get.to(() => SecondScreen(characterCtrl.charactersList[index])),
                                      child: Text('Detalle'),
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ));
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: characterCtrl.charactersList.length),
      ),
    );
  }
}

