import 'package:clean_archi_flutter_tree_list/data/models/record_data_dto.dart';
import 'package:clean_archi_flutter_tree_list/data/models/tree_dto.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:clean_archi_flutter_tree_list/data/services/api_url.dart';

class TreeService {
  final API_URL apiUrl = API_URL();
  final Dio dio = Dio();

  Future<List<TreeDTO>> getTreeList(int startIndex) async {
    String url = apiUrl.baseURL + apiUrl.searchPath;

    // Global params for all request
    Map<String, dynamic> queryParameters = {
      'dataset': 'les-arbres',
      'start': startIndex,
      'rows': '20'
    };

    final response = await dio.get(url, queryParameters: queryParameters);

    if (response.statusCode == 200) {
      Map data = response.data;
      List<dynamic> results = data['records'];
      List<TreeDTO> trees = [];
      for (Map<String, dynamic> json in results) {
        RecordDataDTO recordData = RecordDataDTO.fromApi(json);
        trees.add(recordData.fields);
      }
      return trees;
    } else {
      throw response;
    }
  }
}
