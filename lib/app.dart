import 'dart:math';
import 'package:flutter/material.dart';

class frases extends StatefulWidget {
  const frases({Key? key}) : super(key: key);

  @override
  State<frases> createState() => _frasesState();
}

class _frasesState extends State<frases> {

  //Lista com as frases aleatórias
  List vader = [
    'Não Luke. Eu sou seu pai.',
    'Sua falta de fé é perturbadora.',
    'O almirante falhou pela última vez.',
    'Obiwan te ensinou bem, você aprendeu a controlar seu medo. Agora, liberte seu ódio. Só assim você será capaz de me derrotar.',
    'Não se orgulhe muito desse terror tecnológico que você construiu. A capacidade de destruir planetas é insignificante em comparação com o poder da força.',
    'Eu noto algo... Uma presença que eu não sinto desde...',
    'Una-se a mim e juntos vamos dominar a galáxia, como pai e filho.',
    'Haverá uma grande recompensa para quem encontrar a Millennium Falcon',
    'Procure em seus sentimentos, você saberá que é verdade.',
    'Eu aconselho você a ser prudente, minha paciência tem um limite.',
    'Então, finalmente, você aceitou a verdade.',
    'Quando me separei de você, eu era apenas um aprendiz, agora sou o mestre.',
    'Você está velho Obi-Wan. O sistema da minha armadura, embora não seja tão avançada, é programada em Dart.',
    'Qual o personagem de Star Wars que precisa usar óculos? - Darth "Vesgo"',
    'Qual linguagem de programação é um Sith? - "Dart" Vader'
  ];

  List img = [
    'https://images2.alphacoders.com/591/thumb-1920-59190.jpg',
    'https://w0.peakpx.com/wallpaper/883/811/HD-wallpaper-argus-darth-vader-skin-star-wars.jpg',
    'https://e0.pxfuel.com/wallpapers/174/113/desktop-wallpaper-darth-vader-darth-vader-computer.jpg',
    'https://i0.wp.com/cdn2.tfx.company/images/clickwallpapers-star-wars-darth-vader-in-4k-3840x2160-img1.jpg?w=880&ssl=1',
    'https://c4.wallpaperflare.com/wallpaper/196/131/596/star-wars-darth-vader-movies-anakin-skywalker-wallpaper-preview.jpg'
  ];



  //Variável que irá possuir o texto que será printado na tela
  var _fraseGerada = 'Clique abaixo para gerar uma frase do maligno LORD VADER!';
  var _imagemGerada = 'https://images2.alphacoders.com/591/thumb-1920-59190.jpg';

  //Função para escolher uma frase aleatória da lista
  void _gerarFrase(){
    var aleatorio = Random().nextInt(vader.length);
    var aleatorio_img = Random().nextInt(img.length);

    setState(() {
      _fraseGerada = vader[aleatorio];
      _imagemGerada = img[aleatorio_img];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //Parte da app bar
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'image/dart-vader.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            Container(
                padding: const EdgeInsets.all(8.0), child: Text('FRASES DE DARTH VADER'))
          ],

        ),
      ),

      //Parte da imagem
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[
              // Image.asset('image/dart-vader.png'),
              Image.network(_imagemGerada),

              //Título abaixo da imagem
              Text(_fraseGerada,
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),

              //Parte do botão
              ElevatedButton(
                onPressed: _gerarFrase,
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                child: Text('Nova Frase',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black87,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

