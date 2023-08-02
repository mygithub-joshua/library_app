class NewBookModel {
  String image;

  NewBookModel(this.image);
}

List<NewBookModel> newbooks =
    newBookData.map((item) => NewBookModel(item['image']!)).toList();

var newBookData = [
  {"image": "assets/images/new-jurnal-1.png"},
  {"image": "assets/images/new-jurnal-2.png"},
  {"image": "assets/images/new-jurnal-3.png"},
  {"image": "assets/images/new-jurnal-4.png"},
];
