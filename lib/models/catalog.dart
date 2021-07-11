import 'dart:convert';

class CatalogModel {
  static var items = [
    Item(1, "Iphone 12 Max Pro", "Apple iPhone 12th Gen", 999, "#33505a",
        "https://images-na.ssl-images-amazon.com/images/I/71DVgBTdyLL._SL1500_.jpg"),
    Item(2, "Iphone 12 Max ", "Apple iPhone 12th Gen", 999, "#33505a",
        "https://images-na.ssl-images-amazon.com/images/I/71DVgBTdyLL._SL1500_.jpg")
  ];
}

class Item {
  final int id;
  final String name;
  final String dec;
  final num price;
  final String color;
  final String imageurl;

  Item(
    this.id,
    this.name,
    this.dec,
    this.price,
    this.color,
    this.imageurl,
  );

  Item copyWith({
    int? id,
    String? name,
    String? dec,
    num? price,
    String? color,
    String? imageurl,
  }) {
    return Item(
      id ?? this.id,
      name ?? this.name,
      dec ?? this.dec,
      price ?? this.price,
      color ?? this.color,
      imageurl ?? this.imageurl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'dec': dec,
      'price': price,
      'color': color,
      'imageurl': imageurl,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      map['id'],
      map['name'],
      map['dec'],
      map['price'],
      map['color'],
      map['imageurl'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, dec: $dec, price: $price, color: $color, imageurl: $imageurl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.id == id &&
        other.name == name &&
        other.dec == dec &&
        other.price == price &&
        other.color == color &&
        other.imageurl == imageurl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        dec.hashCode ^
        price.hashCode ^
        color.hashCode ^
        imageurl.hashCode;
  }
}
