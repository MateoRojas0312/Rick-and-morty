import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rick_and_morty/controller/characters_controller.dart';
import 'package:rick_and_morty/models/results.dart';
import 'package:rick_and_morty/pages/firstScreen.dart';

class SecondScreen extends GetView<CharactersController> {
  final Result result;
  SecondScreen(this.result, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var secondColor = Color(0xFF9e9e9e);
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
      body: Container(
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height * 0.9,
        width: MediaQuery.of(context).size.width,
        child: Card(
          color: Color(0xFF3C3E44),
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Detalle',
                  style: GoogleFonts.getFont('Creepster',
                      fontSize: 28, color: Colors.white),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      result.image,
                      fit: BoxFit.fill,
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  result.name,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.getFont('Creepster',
                      fontSize: 24, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Gender : ',
                        style: GoogleFonts.getFont('Creepster',
                            fontSize: 24, color: Colors.white),
                      ),
                      Expanded(
                        child: Text(
                          result.gender,
                          style: GoogleFonts.getFont('Creepster',
                              fontSize: 21, color: secondColor),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Origin : ',
                        style: GoogleFonts.getFont('Creepster',
                            fontSize: 24, color: Colors.white),
                      ),
                      Expanded(
                        child: Text(
                          result.origin.name,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.getFont('Creepster',
                              fontSize: 21, color: secondColor),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Location : ',
                        style: GoogleFonts.getFont('Creepster',
                            fontSize: 24, color: Colors.white),
                      ),
                      Expanded(
                        child: Text(
                          result.location.name,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.getFont('Creepster',
                              fontSize: 21, color: secondColor),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
