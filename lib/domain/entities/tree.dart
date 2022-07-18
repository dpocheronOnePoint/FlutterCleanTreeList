class Tree {
  final int id;
  final String? name;

  Tree({required this.id, this.name});

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name};
  }
}

final initialTree = Tree(
  id: 0,
  name: '',
);
