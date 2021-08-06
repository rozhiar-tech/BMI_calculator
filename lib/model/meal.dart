class Meal {
  final String mealTime, name, imagePath, kiloCaloriesBurnt, timeTaken;
  final String preparation;
  final List ingredients;

  Meal(
      {this.mealTime,
      this.name,
      this.imagePath,
      this.kiloCaloriesBurnt,
      this.timeTaken,
      this.preparation,
      this.ingredients});
}

final meals = [
  Meal(
      mealTime: "نانی بەیانی",
      name: "هێلکە ی کوڵاو  ماست",
      kiloCaloriesBurnt: "١٥٥",
      timeTaken: "10",
      imagePath: "assets/egg.jpg",
      ingredients: [
        "یەک هێلکەی کوڵاو",
        "یەک مۆز",
        "یەک قاپ ماست",
        "لەتێک سەموونی جۆ",
      ],
      preparation: ''' 
          بەیانیان ژەمێکی پڕ پڕۆتین و کالۆری سادە بۆ هەرس کردن وەک سەموونی جۆ کە ڕۆژەکەت دەس پێئەکا و پڕ نیوترشن
           '''),
  Meal(
      mealTime: "نانی نیوەڕۆ",
      name: "برنجی بێڕۆن",
      kiloCaloriesBurnt: "١٣٠",
      timeTaken: "٣٠",
      imagePath: "assets/rice-today.jpg",
      ingredients: [
        "١ کوپ برنج",
        "٢ کوپ ئاو",
        "نیو کەچک چا خوێ",
      ],
      preparation: '''  
          ژەمێکی زۆر باشو تێرە کە پێکهاتووە لە برنجی بێڕۆنو پارچەیەک سنگی مریشک وە دەتوانی پارچەیەک پەتاتەی کوڵاو بخۆی بۆ زیاتر تێر بوون 
          '''),
  Meal(
      mealTime: " ژەمی ئێواران",
      name: "زەڵاتە",
      kiloCaloriesBurnt: "414",
      timeTaken: "16",
      imagePath: "assets/salad.jpg",
      ingredients: [
        "تەماتە",
        "سنگی مریشک",
        "سەوزەوات",
        "کەمێک کەرە",
      ],
      preparation: '''
      ژەمی ئێواران دەتوانی قاپێک لە زەڵاتەی سیزەر بخۆی کە پێکهاتووە لە زۆربەی سەوزەواتەکان کە بە سوودن بۆ لەش سنگی مریشک کە بڕێکی باش پڕۆتینی تێدایە یارمەتی لەش دەدات بۆ زوو هەرس کردنی خۆراکەکان ئەمەش وا دەکات جەستە زووتر چەوری بسوتێنێ
      '''),
];
