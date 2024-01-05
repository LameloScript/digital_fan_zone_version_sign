// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:alphabet_scroll_view/alphabet_scroll_view.dart';

class SignetCustomiser extends StatefulWidget {
  final double? width;
  final double? height;

  // Le constructeur avec paramètres et une initialisation correcte
  const SignetCustomiser({
    Key? key,
    this.width,
    this.height,
    // 'required' indique que le champ 'title' doit être fourni lors de la création de l'objet
  }) : super(key: key);

  @override
  _SignetCustomiserState createState() => _SignetCustomiserState();
}

class _SignetCustomiserState extends State<SignetCustomiser> {
  void _incrementCounter() {}
  double iconPosition = 0.0;

  List<Map<String, String>> dataList = [
    {'title': 'Abogaïss', 'subtitle': 'Bel Homme, qui a du style, Joli garçon'},
    {'title': 'Attacher quelqu’un', 'subtitle': 'Se moquer'},
    {'title': 'Apoutchou', 'subtitle': 'Belle personne ronde'},
    {'title': 'Atalaku', 'subtitle': "Faire l'éloge"},
    {'title': 'Assoya', 'subtitle': "S'associer, se mettre ensemble"},
    {'title': 'Agbôlôté', 'subtitle': 'Être super musclé'},
    {'title': 'Agnon', 'subtitle': 'Habit, Vêtement'},
    {'title': 'Asso', 'subtitle': 'Compagnon ou amis de confiance'},
    {'title': 'Bahi', 'subtitle': 'Malchance'},
    {'title': 'Bara', 'subtitle': 'Travail, Travailler'},
    {'title': 'Bédou', 'subtitle': 'Portefeuille'},
    {'title': 'Béou', 'subtitle': 'Fuir, aller'},
    {'title': 'Beko', 'subtitle': 'Un baiser'},
    {'title': 'Bescla', 'subtitle': 'Téléphone cellulaire'},
    {'title': 'Bingue', 'subtitle': "La France ou l'Europe"},
    {'title': 'Bobara-Ba', 'subtitle': 'Postérieur généreux'},
    {'title': 'Bobara-fitini', 'subtitle': 'Postérieur fin'},
    {'title': 'Boucantier', 'subtitle': 'Fêtard'},
    {'title': 'Bouai', 'subtitle': 'Laisser tomber'},
    {'title': 'Bôrô', 'subtitle': 'Beaucoup, Fan, sac'},
    {'title': 'Bôrôtiser', 'subtitle': 'Chambrer, Faire des éloges'},
    {'title': 'Broutage', 'subtitle': 'Arnaque'},
    {'title': 'Brouteur', 'subtitle': 'Arnaqueur'},
    {'title': "C’est pas blor", 'subtitle': "Ce n’est faux, tu n’as pas tord"},
    {'title': "C’est pas yaya", 'subtitle': "Ce n’est pas un jeu"},
    {'title': 'Chicoter', 'subtitle': 'Gagner, corriger, frapper'},
    {'title': 'Côcô', 'subtitle': 'Quémander'},
    {'title': 'Côcôta', 'subtitle': 'Coup sur la tête'},
    {'title': 'Cohan', 'subtitle': 'Comme ça'},
    {'title': 'Coulé', 'subtitle': 'Fauché'},
    {'title': 'Daba', 'subtitle': 'Manger, ou frapper'},
    {'title': 'Dabali', 'subtitle': 'Nourriture ou frapper'},
    {'title': 'Debalousseur', 'subtitle': 'Voleur, agresseur'},
    {'title': 'Désciencer', 'subtitle': 'Décourager, Désillusionner'},
    {'title': 'Débout', 'subtitle': 'Riche'},
    {'title': 'Décrou', 'subtitle': 'Trouver, Découvrir'},
    {'title': 'Dédja', 'subtitle': 'Ouvrir, Ouvert, blessé'},
    {'title': 'Dêmin-dêmin', 'subtitle': 'Grouiller, lutter'},
    {'title': 'Dja', 'subtitle': 'Tuer'},
    {'title': 'Dièse', 'subtitle': '10 000 F CFA'},
    {'title': 'Djai', 'subtitle': 'Argent'},
    {'title': 'Djafoule', 'subtitle': 'Tout donner, impressionner'},
    {'title': 'Djandjou', 'subtitle': 'Prostituée, fille de joie'},
    {
      'title': 'Djassa',
      'subtitle': "Au marché, précisément à l'endroit où on vend les habits"
    },
    {'title': 'Djèguè', 'subtitle': 'Laver'},
    {'title': 'Djidji', 'subtitle': 'Original, Vrai'},
    {'title': 'Djossi', 'subtitle': 'Travail, taf'},
    {'title': 'Dindin', 'subtitle': 'Regarder, lorgner, surveiller, hésiter'},
    {'title': 'Douf', 'subtitle': 'Le fait de mourir'},
    {'title': 'Donner goumin', 'subtitle': 'faire vivre un chagrin'},
    {'title': 'Drap', 'subtitle': 'problème'},
    {'title': 'Enjailler', 'subtitle': "S'amuser, plaire"},
    {'title': 'Enjaillement', 'subtitle': 'Amusement, fête'},
    {'title': 'En tas', 'subtitle': 'Nombreux, Beaucoup'},
    {'title': 'Être bahi', 'subtitle': 'Être malchanceux'},
    {'title': 'Être Pouasseux', 'subtitle': 'Être malchanceux'},
    {'title': 'Falle', 'subtitle': 'Cigarette'},
    {'title': 'Faller', 'subtitle': 'Fumer'},
    {'title': 'Faire Paiya', 'subtitle': 'Faire la fête'},
    {'title': 'Fangan', 'subtitle': 'Force'},
    {'title': 'Faut me brancher', 'subtitle': 'Informe moi'},
    {'title': 'Fata', 'subtitle': 'Tomber, vendre'},
    {'title': 'Fataki', 'subtitle': 'Chute'},
    {'title': 'Fiengalle', 'subtitle': 'Maigrichon'},
    {'title': 'Fongnon (se)', 'subtitle': 'Faire le malin, frimer'},
    {'title': 'Foul', 'subtitle': 'Plein, beaucoup'},
    {'title': 'Fraya', 'subtitle': 'Fuir, s\'échapper'},
    {'title': 'Flôcô', 'subtitle': 'Mentir, mensonge'},
    {'title': 'Fraichni', 'subtitle': 'Petite-amie, demoiselle'},
    {'title': 'Gaou', 'subtitle': 'Ignorant, une personne pas branchée'},
    {'title': 'Gawa', 'subtitle': 'Ringard'},
    {
      'title': 'Gbagboter',
      'subtitle': 'Marcher (beaucoup et sur une longue distance)'
    },
    {'title': 'Gbê', 'subtitle': 'Vérité ; conseil ; sermon ;'},
    {
      'title': 'Gbahé',
      'subtitle':
          'Gronder ; conseiller ; sermonner, s’absenter aux cours ou à une formation'
    },
    {
      'title': 'Gbairai',
      'subtitle': 'Commérage ; ragot ; médisance, dénigrement'
    },
    {'title': 'Gbêsse', 'subtitle': '500 F CFA'},
    {'title': 'Gbô', 'subtitle': 'Manger, point de la main'},
    {
      'title': 'Gbra',
      'subtitle': 'Descendre d’une véhicule, rompre une relation'
    },
    {'title': 'Gnan', 'subtitle': 'Faire le malin'},
    {'title': 'Gnaga', 'subtitle': 'bagarre ; grosse palabre ; baston'},
    {'title': 'Gnagami', 'subtitle': 'embrouille, rixe'},
    {'title': 'Gué', 'subtitle': 'donner'},
    {'title': 'Gbôlôzailli', 'subtitle': 'Gros, massif, musclé'},
    {'title': 'Gbonhi', 'subtitle': 'Groupe / Bande'},
    {'title': 'Gbon', 'subtitle': '5 000 F CFA'},
    {'title': 'Gboro', 'subtitle': 'Jouer'},
    {'title': 'Glôglô', 'subtitle': 'Couloirs, raccourci, bas quartier'},
    {'title': 'Gnanhi', 'subtitle': 'Femme cougar'},
    {'title': 'Gnakoué', 'subtitle': 'Ignorant, couyon'},
    {'title': 'Gnaga', 'subtitle': 'Bagarre'},
    {'title': 'Gnata', 'subtitle': 'Très ignorant'},
    {'title': 'Go', 'subtitle': 'Femme, fille, petite amie'},
    {'title': 'Gonmon', 'subtitle': 'Policier / Gendarme'},
    {'title': 'Goumin', 'subtitle': 'Chagrin d’amour'},
    {'title': 'Groto', 'subtitle': 'Homme riche'},
    {'title': 'Grouilleur', 'subtitle': 'Débrouillard'},
    {'title': 'Guédé', 'subtitle': 'Hésiter'},
    {'title': 'Kaba', 'subtitle': 'prison'},
    {'title': 'Ken', 'subtitle': 'Business'},
    {'title': 'Kener', 'subtitle': 'Planifier / dealer / vendre / baiser'},
    {'title': 'Keneur', 'subtitle': 'Dealer /vendeur'},
    {'title': 'Kpakpato', 'subtitle': 'Rapporteur, colporteur'},
    {'title': 'Kpakpatoya', 'subtitle': 'Commérage, colportage'},
    {'title': 'Kpata', 'subtitle': 'Bel Homme, qui a du style, Joli garçon'},
    {'title': 'Krika', 'subtitle': '1 000 F CFA'},
    {'title': 'Lā', 'subtitle': 'Donner, ( Se) vendre moins cher'},
    {'title': 'Lalé', 'subtitle': 'Gifler, frapper, téléphone, endroit'},
    {'title': 'Maga (Maga Tapé)', 'subtitle': 'Dérober, surprise'},
    {'title': 'Marcana', 'subtitle': 'Match de foot petit poteau'},
    {'title': 'Mettre soua', 'subtitle': 'Coller la honte à quelqu’un'},
    {'title': 'Môgô', 'subtitle': 'Personne, gens, homme, pote'},
    {'title': 'Mousso', 'subtitle': 'Femme'},
    {'title': 'Pahé', 'subtitle': 'Parce que / car'},
    {'title': 'Painhou', 'subtitle': 'Prostituée'},
    {'title': 'Paiya', 'subtitle': 'Show'},
    {'title': 'Paiyasseur', 'subtitle': 'Fêtard'},
    {'title': 'Pantougouler', 'subtitle': 'Fuir / s\'échapper'},
    {'title': 'Petit pompier', 'subtitle': 'Gigolo'},
    {'title': 'Piké', 'subtitle': 'Fauché'},
    {'title': 'Plomb', 'subtitle': '100 Francs CFA'},
    {
      'title': 'Prendre un glôglô',
      'subtitle': 'Emprunter un raccourci, un chemin rocambolesque'
    },
    {'title': 'Propro', 'subtitle': 'Produit éclaircissant, poursuivre'},
    {'title': 'Ramba', 'subtitle': 'Problèmes, soucis, ennuies'},
    {'title': 'Ropéro', 'subtitle': 'Homme de main'},
    {'title': 'Sêpkêle', 'subtitle': 'Poids plume, maigrichon'},
    {'title': 'Se logoh', 'subtitle': 'faire le dandy ; le malin'},
    {'title': 'Se fongnon', 'subtitle': 'Faire le malin'},
    {'title': 'Skinny', 'subtitle': 'Belle jeune femme mince'},
    {'title': 'Soutra', 'subtitle': 'Aider, sauver, sortir d\'une passe'},
    {'title': 'Soayé', 'subtitle': 'Méchant / Mauvais'},
    {'title': 'Sri', 'subtitle': 'Attraper'},
    {'title': 'Tassaba', 'subtitle': 'Fesses'},
    {'title': 'Tchatcholi', 'subtitle': 'Dépigmentation'},
    {'title': 'Tiasse', 'subtitle': 'fauché (syn : moisi)'},
    {'title': 'Togo', 'subtitle': '100 FCFA, 100 mille FCFA'},
    {'title': 'Tolo', 'subtitle': 'Gifler'},
    {'title': 'Wé', 'subtitle': 'Chose / truc / plan / deal'},
    {'title': 'Wélé', 'subtitle': 'Appeler'},
    {'title': 'Wéman', 'subtitle': 'Dealer'},
    {'title': 'Wizkider', 'subtitle': 'Ne pas tenir ses promesses'},
    {'title': 'Wôtro', 'subtitle': 'hôtel'},
    {'title': 'Yé', 'subtitle': 'Je'},
    {'title': 'Yougou-yougou', 'subtitle': 'Friperie'},
    {'title': 'Zango', 'subtitle': 'sapé ; tiré à quatre épingles'},
    {'title': 'Zogotape', 'subtitle': 'Assommer'},
    {'title': 'Zo', 'subtitle': 'Beau (neutre)'},
    {'title': 'Zota', 'subtitle': 'Belle'},
    {'title': 'Zogor', 'subtitle': 'Une chose/personne/idée ennuyeuse'},
    {'title': 'Zouker dans son djai', 'subtitle': 'bouffer son argent'}

    // Ajoutez plus de paires titre-sous-titre au besoin
  ];
  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    // Triez la liste par ordre alphabétique en fonction de la clé 'title'
    dataList.sort((a, b) => a['title']!.compareTo(b['title']!));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: false,
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onVerticalDragUpdate: (details) {
                setState(() {
                  iconPosition += details.primaryDelta!;
                });
              },
              child: AlphabetScrollView(
                list: dataList.map((e) => AlphaModel(e['title']!)).toList(),
                alignment: LetterAlignment.right,
                itemExtent: 50,
                unselectedTextStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                selectedTextStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
                overlayWidget: (value) => Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: iconPosition,
                      right: 0,
                      child: Icon(
                        Icons.star,
                        size: 50,
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '$value'.toUpperCase(),
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                itemBuilder: (_, k, id) {
                  var currentItem = dataList[k];
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: ListTile(
                      title: Text(currentItem['title']!),
                      subtitle: Text(currentItem['subtitle']!),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
