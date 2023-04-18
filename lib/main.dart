import 'dart:math';

import 'package:flutter/material.dart';
//app de frases aleatórias com, array de frases
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title:"App Frases Aleatórias",
    home: frases(),
  ));
}
class frases extends StatefulWidget {
  const frases({Key? key}) : super(key: key);

  @override
  State<frases> createState() => _frasesState();
}
class _frasesState extends State<frases> {

  //back do app
  //criar um array de frases para ser exibidas de forma aleatória
  var _frases = [
    'Não existe trabalho ruim. O ruim é ter que trabalhar', //array frase 0
    'Eu gosto de deixar as oportunidade de trabalho aos mais jovens. E tenho esta nobre atitude desde meus 15 anos', //array frase 1
    'Não estou triste porque não arranjei emprego. Estou triste porque consegui arranjar', //array frase 2
    'Se eu soubesse que tinha mandado um idiota fazer isso tinha ido eu mesmo', //array frase 3
    'Minha senhora, se acha que pode me comprar com alguns presentinhos, eu vou lhe dizer uma coisa… eu aceito!', //array frase 4
    'Quando a fome aperta a vergonha afrouxa', //array frase 5
    'Você sabe quanto custa trazer um estrangeiro? Ainda mais sendo de outro país?', //array frase 6
    'Pra aprendermos outro idioma temos que estudar anatomia, já que a língua faz parte do corpo humano', //array frase 7
    'Você não sabe o que é sentido figurado? Na escola não te dão aulas de geometria?', //array frase 8
    'Teria sido melhor ir a ver o silme do Pelé', //array frase 9
    'Seu Madruga, o senhor não vai morrer. Vão matar o senhor!', //array frase 10
  ];
  var _frasesGerada= 'Clique abaixo para gerar uma frase!'; // o text depois da imagem da logo, para chamar a função _gerarfrase

  void _gerarfrase(){// função de gerar frase aleatória
    //numero sorteado irá pegar aleatóriamente de 0,1,2,3,4,5,6,7,8,9,10 das frases do array

    var numeroSorteado = Random().nextInt(_frases.length);
    //random é um importe do tipo import 'dart:math';
    //o random é responsável por exibir o array de forma aleatória
    setState((){
      _frasesGerada= _frases[numeroSorteado];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Frases do Chaves"),
    backgroundColor: Color(0xff002D62), //cor do appBar
    ),
    body: Center(
      //centralizar o body
    child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('image/fundo_chaves.jpg'),
          fit: BoxFit.cover
        )
      ),
        padding: EdgeInsets.all(16), //espaçamento appbar para o body
    child: Column( // verticalizar os elementos
    mainAxisAlignment: MainAxisAlignment.spaceAround, //spacearound == entre os espaços
    crossAxisAlignment: CrossAxisAlignment.center,//centralizar o espaçamento
    children: <Widget>[
      Image.asset('image/title.png'),
      Text(_frasesGerada,
        style: TextStyle(
          fontSize: 25,
          fontStyle: FontStyle.italic,
          color: Colors.white,
      ),
    ),
      ElevatedButton(//botão para gerar as frases
          onPressed: _gerarfrase, //colocar a função array de frases aleatórias
        child: Text("Nova frase",
          style: TextStyle(
          fontSize: 25,
    color: Colors.black87,
    fontWeight: FontWeight.bold
    ),
    ),
    ),
    ],
    ),
    ),
    ));
}
}
