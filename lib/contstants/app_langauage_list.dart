class Language {
  final int? id;
  final String? name;
  final String? flag;
  final String? languageCode;
  Language({this.id, this.name, this.flag, this.languageCode});
  static List<Language> langaugeType() {
    return <Language>[
      Language(id: 1, name: "🇺🇸", flag: "English", languageCode: "en"),
      Language(id: 2, name: "🇫🇴", flag: "فارسی", languageCode: "fa"),
      Language(id: 3, name: "🇦🇼", flag: "عربیہ", languageCode: "en"),
      Language(id: 4, name: "🇮🇳", flag: "Indian", languageCode: "hi"),
    ];
  }
}
