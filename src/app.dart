import 'dart:io';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';

final _router = Router()
    ..get('/', _rootHandler)
    ..get('/echo/<message>', _echoHandler);

Response _rootHandler(Request req) {
    return Response.ok('Hello, World... from Dart, without Docker!\n');
}

Response _echoHandler(Request request) {
    final message = params(request, 'message');
    return Response.ok('$message\n');
}

void main(List<String> args) async {
    final ip = InternetAddress.anyIPv4;
    final _handler = Pipeline().addMiddleware(logRequests()).addHandler(_router);
    final port = int.parse(Platform.environment['PORT'] ?? '8080');
    final server = await serve(_handler, ip, port);
    print('Server listening on ${server.address.address}:${server.port}');
}
