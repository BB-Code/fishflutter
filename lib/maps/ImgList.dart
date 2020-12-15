class ImgList {
  String title;
  String src;
  int prices;
  int like;
  String author;
  String name;
  bool zhima;

  ImgList(
      {this.title, this.src, this.prices, this.like, this.author, this.zhima});

  ImgList.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    src = json['src'];
    prices = json['prices'];
    like = json['like'];
    author = json['author'];
    name = json['name'];
    zhima = json['zhima'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['src'] = this.src;
    data['prices'] = this.prices;
    data['like'] = this.like;
    data['author'] = this.author;
    data['name'] = this.name;
    data['zhima'] = this.zhima;
    return data;
  }
}
