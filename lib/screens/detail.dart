import 'package:flutter/material.dart';
import 'package:pokedex_flutter/models/pokemon_detail.dart';
import 'package:pokedex_flutter/widgets/detail_back_button.dart';
import 'package:pokedex_flutter/widgets/detail_title.dart';
import 'package:pokedex_flutter/widgets/detail_image.dart';
import 'package:pokedex_flutter/widgets/detail_data.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as PokemonDetail;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            DetailImage(image: arguments.image),
            DetailTitle(id: arguments.id, name: arguments.name),
            DetailData(id: arguments.id),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: const DetailBackButton(),
    );
  }
}
