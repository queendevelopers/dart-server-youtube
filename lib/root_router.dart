// Configure routes.
import 'dart:convert';

import 'package:server/models/profile_model.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

final rootRouter = Router()
  ..get('/', _rootHandler)
  ..get('/echo/<message>', _echoHandler)
  ..get('/user/profile', _userProifleHandler);

Response _rootHandler(Request req) {
  return Response.ok('Hello, World!\n');
}

Response _echoHandler(Request request) {
  final message = request.params['message'];
  return Response.ok('$message\n');
}

Response _userProifleHandler(Request request) {
  final profileModel = ProfileModel(
      name: "Nikesh Maharjan",
      email: "nikeshmaharjan25@hotmail.com",
      age: 30,
      address: "Kathmandu, Nepal",
      phone: 3025919912,
      linkedin: "https://www.linkedin.com/in/queendevelopers",
      imageUrl: "https://avatars.githubusercontent.com/u/122380441?v=4");

  return Response.ok(jsonEncode(profileModel.toJson()),
      headers: {'Content-Type': 'application/json'});
}
