[![Pub](https://img.shields.io/pub/v/http_pref.svg)](https://pub.dev/packages/http_pref)
# http_pref

Making your app offline ready. Uses http for network request and shared prefences for cache

## Description
Extend to `BaseRepository` and get all your GET request cached in using shared preferences.


## Basic Usage
### GET
```
class OpenSpaceRepository extends BaseRepository {
  bool doesNotContain = false;

  Future<List<OpenSpace>> fetchOpenSpace({forceLoadFromCache = true}) {
    return fetchItem(get_open_space, forceLoadFromCache: forceLoadFromCache)
        .then((response) {
      var json = jsonDecode(response);
      List<OpenSpace> openSpaces = mapJsonToOpenSpace(json);

      return openSpaces;
    });
  }

  List<OpenSpace> mapJsonToOpenSpace(json) {
      List<OpenSpace> open_spaces = (json as List).map((i) {
        return OpenSpace.fromJson(i);
      }).toList();
      return open_spaces;
    }
```

### POST
```
dynamic uploadForm(Map<String, dynamic> formData, List<OpenSpaceFile> files) async {
    var openSpaceFormData =
        OpenSpaceFormData(formFields: formData, files: files);
    String response = await baseNetworkProvider.post(
        url: report, openSpaceFormData: openSpaceFormData);
    return response;
  }
```
