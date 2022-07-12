class TarotArcana{
  final String name;
  final String imgPath;
  final String location;

  TarotArcana({required this.name, required this.imgPath, required this.location});
}
// <TarotArcana> type 없으면 MyPage List.generate 시 subtype error 'String'
List<TarotArcana> tarotContents = [
  TarotArcana(name: 'the Fool', imgPath: 'assets/ta_00.png', location: 'forest and mountain'),
  TarotArcana(name: 'the Magician', imgPath: 'assets/ta_01.png', location: 'desert'),
  TarotArcana(name: 'the Persephone', imgPath: 'assets/ta_02.png', location: 'temple'),
  TarotArcana(name: 'the Empress', imgPath: 'assets/ta_03.png', location: 'forest'),
  TarotArcana(name: 'the Emperor', imgPath: 'assets/ta_04.png', location: 'dreary mountain'),
  TarotArcana(name: 'the Pole', imgPath: 'assets/ta_05.png', location: 'church'),
  TarotArcana(name: 'the lovers', imgPath: 'assets/ta_06.png', location: 'east of eden'),
  TarotArcana(name: 'the Chariot', imgPath: 'assets/ta_07.png', location: 'battle ground'),
  TarotArcana(name: 'the Strength', imgPath: 'assets/ta_08.png', location: 'road to him'),
  TarotArcana(name: 'the Hermit', imgPath: 'assets/ta_09.png', location: 'snow mountain'),
  TarotArcana(name: 'the Wheel of Fortune', imgPath: 'assets/ta_10.png', location: 'heaven'),
];

// List<String> tarotLocation = [
//   'forest and mountain',
//   'desert',
//   'temple',
//   'forest',
//   'dreary mountain',
//   'church',
//   'east of eden',
//   'battle ground',
//   'road to him',
//   'snow mountain',
//   'heaven'
// ];
//
// List<String> tarotName = [
//   "the Fool",
//   "the Magician",
//   "the Persephone",
//   "the Empress",
//   "the Emperor",
//   "the Pole",
//   "the lovers",
//   "the Chariot",
//   "the Strength",
//   "the Hermit",
//   "the Wheel of Fortune"
// ];
//
// List<String> tarotImagePath = [
//   'assets/1.png',
//   'assets/2.png',
//   'assets/3.png',
//   'assets/4.png',
//   'assets/5.png',
//   'assets/6.png',
//   'assets/7.png',
//   'assets/8.png',
//   'assets/9.png',
//   'assets/10.png'
// ];
