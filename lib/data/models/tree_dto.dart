class TreeDTO {
  final int id;
  final String? name;

  TreeDTO.fromApi(Map<String, dynamic> map)
      : id = map['idbase'] as int,
        name = map['libellefrancais'] != null
            ? map['libellefrancais'] as String
            : null;
}
