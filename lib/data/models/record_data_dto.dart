import 'package:clean_archi_flutter_tree_list/data/models/tree_dto.dart';

class RecordDataDTO {
  final TreeDTO fields;

  RecordDataDTO.fromApi(Map<String, dynamic> map)
      : fields = TreeDTO.fromApi(map['fields'] as Map<String, dynamic>);
}
