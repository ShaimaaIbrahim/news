import 'package:dart_frog/dart_frog.dart';

import 'package:news_app_tempelate_api/api.dart';

Handler middleware(Handler handler) {
  return handler
      .use(requestLogger())
      .use(userProvider())
      .use(newsDataSourceProvider());
}
