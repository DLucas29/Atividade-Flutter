import 'package:flutter/material.dart';
import 'widgets/images.dart';
import 'widgets/actions.dart';
import 'widgets/avatars.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Viagens',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Imagem de Capa do Coliseu
            const Images(),

            // 2. Botões de Ação (Quero Ir, Já Fui, etc.)
            const Acoes(),

            // 3. Texto Descritivo (Lorem Ipsum)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce id '
                'diam id ligula ultricies pulvinar. In neque lectus, sagittis eu libero '
                'et, venenatis lacinia nulla. Etiam eget purus leo. Nam '
                'consectetur ornare est eu lobortis. Morbi eu augue eu lectus '
                'condimentum vestibulum. Etiam id nibh luctus, porttitor arcu et, '
                'porttitor purus. Pellentesque vulputate nibh sit amet rutrum '
                'viverra. Nullam eget metus est. Integer condimentum, odio sed '
                'congue malesuada, ipsum nisi bibendum lectus, quis porttitor '
                'ante lacus in mi. Curabitur eget imperdiet ante. Aliquam magna '
                'tortor, volutpat sit amet mi a, cursus malesuada leo. Aenean '
                'dolor erat, gravida ut ultricies sed, convallis nec ipsum.',
                style: TextStyle(fontSize: 13, height: 1.3),
              ),
            ),

            const SizedBox(height: 20),

            // 4. Seção de Pessoas Encontradas (Título, Filtrar e Avatares)
            const Avatars(),

            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
