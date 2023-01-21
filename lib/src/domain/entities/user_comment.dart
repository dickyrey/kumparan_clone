class UserComment {
  UserComment({
    required this.id,
    required this.name,
    required this.photo,
  });
  
  final int id;
  final String name;
  final String photo;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'photo': photo,
      };
}
