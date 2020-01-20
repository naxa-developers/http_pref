import 'dart:convert';

import 'package:http_pref/repository/base_repository.dart';
import 'package:http_pref_example/repository/post_response.dart';

class PostRepository extends BaseRepository {
  getPosts(url){
    return fetchItem(url).then((response){
      var json = jsonDecode(response);
      return mapResponseToPost(json);
    });
  }

  List<Post> mapResponseToPost(var response) {
    List<Post> amenities = (json as List).map((i) {
      return Post.fromJson(i);
    }).toList();
    return amenities;
  }

}
