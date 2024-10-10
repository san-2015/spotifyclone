import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotifyclone/data/models/create_user_req.dart';

abstract class AuthFirebaseService {
  Future<void> signup(CreateUserReq createUserReq);

  Future<void> signin();
}

class AuthFirebaseServiceImpt extends AuthFirebaseService {
  @override
  Future<void> signin() {
    // TODO: implement signin
    throw UnimplementedError();
  }

  @override
  Future<void> signup(CreateUserReq createUserReq) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: createUserReq.email, password: createUserReq.password);
    } on FirebaseAuthException catch (e) {}
    // TODO: implement signup
  }
}
