
class Pokemon {
  const Pokemon({
    required this.name,
    required this.id,
    required this.imageUrl,
  });

  final String name;
  final String id;
  final String imageUrl;

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      name: json['name'],
      id: "#${json['id']}",
      imageUrl: json['sprites']['other']['official-artwork']['front_default'],
    );
  }

}