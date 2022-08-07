import 'dart:convert';

class Tienda {
  Tienda({
    required this.result,
  });

  List<Category> result;

  factory Tienda.fromJson(String str) => Tienda.fromMap(json.decode(str));

  factory Tienda.fromMap(Map<String, dynamic> json) => Tienda(
        result:
            List<Category>.from(json["result"].map((x) => Category.fromMap(x))),
      );
}

class Category {
  Category({
    required this.category,
    required this.data,
  });

  String category;
  List<Subcategory> data;

  factory Category.fromJson(String str) => Category.fromMap(json.decode(str));

  factory Category.fromMap(Map<String, dynamic> json) => Category(
        category: json["category"],
        data: List<Subcategory>.from(
            json["data"].map((x) => Subcategory.fromMap(x))),
      );
}

class Subcategory {
  Subcategory({
    required this.subcategory,
    required this.products,
  });

  String subcategory;
  List<Product> products;

  factory Subcategory.fromJson(String str) =>
      Subcategory.fromMap(json.decode(str));

  factory Subcategory.fromMap(Map<String, dynamic> json) => Subcategory(
        subcategory: json["subcategory"],
        products:
            List<Product>.from(json["products"].map((x) => Product.fromMap(x))),
      );
}

class Product {
  Product({
    required this.name,
    required this.value,
  });

  String name;
  dynamic value;

  // TODO: IMPLENTACION DE UNA FUNCION PARA AGREGAR A CADA ELEMENTO DEL ARRAY ALGO QUE LE FALTE (es solo un ejemplo)
  // get fullProductImg {
  //   if (name !=
  //       null) // NOTA: LA VARIABLE AQUI DEBE SER DE TIPO OPCIONAL NO REQUERIDO
  //     return 'https://image.tmdb.org/t/p/w500${this.name}';

  //   return 'https://i.stack.imgur.com/GNhxO.png';
  // }

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        name: json["name"],
        value: json["value"],
      );
}

































// import 'dart:convert';

// class Tienda {
//   Tienda({
//     required this.tienda,
//   });

//   List<Category> tienda;

//   factory Tienda.fromJson(String str) => Tienda.fromMap(json.decode(str));

//   factory Tienda.fromMap(dynamic json) => Tienda(
//         tienda: List<Category>.from(json.map((x) => Category.fromMap(x))),
//       );
// }

// class Category {
//   Category({
//     required this.category,
//     required this.data,
//   });

//   String category;
//   List<Subcategory> data;

//   factory Category.fromJson(String str) => Category.fromMap(json.decode(str));

//   factory Category.fromMap(Map<String, dynamic> json) => Category(
//         category: json["category"],
//         data: List<Subcategory>.from(
//             json["data"].map((x) => Subcategory.fromMap(x))),
//       );
// }

// class Subcategory {
//   Subcategory({
//     this.subcategory,
//     this.products,
//   });

//   String? subcategory;
//   List<Product>? products;

//   factory Subcategory.fromJson(String str) =>
//       Subcategory.fromMap(json.decode(str));

//   factory Subcategory.fromMap(Map<String, dynamic> json) => Subcategory(
//         subcategory: json["subcategory"],
//         products:
//             List<Product>.from(json["products"].map((x) => Product.fromMap(x))),
//       );
// }

// class Product {
//   Product({
//     required this.name,
//     required this.value,
//   });

//   String name;
//   dynamic value;

//   factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

//   factory Product.fromMap(Map<String, dynamic> json) => Product(
//         name: json["name"],
//         value: json["value"],
//       );
// }
