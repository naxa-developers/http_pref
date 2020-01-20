import 'package:http_pref/repository/base_repository.dart';

class PostRepository extends BaseRepository {
  Future<String> getPosts(url) {
    return fetchItem(url).then((response) {
      return response;
    }).catchError(() {
      print("error");
    });
  }

//  List<Post> mapResponseToPost(var response) {
//    List<Post> amenities = (json as List).map((i) {
//      print("ho");
//      return Post.fromJson(i);
//    }).toList();
//
//    return amenities;
//  }
//}
}

PostRepository postRepository = PostRepository();
