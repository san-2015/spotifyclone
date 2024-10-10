import 'package:spotifyclone/data/models/create_user_req.dart';

abstract class AuthRepository {
  Future<void> siugnup(CreateUserReq createUserReq);

  Future<void> signin();
}
