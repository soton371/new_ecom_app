
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
class SignInController extends GetxController{
   final GoogleSignIn googleSignIn = GoogleSignIn();
  final googleAccount = Rx<GoogleSignInAccount>(null);


  signIn() async{
    googleAccount.value = await googleSignIn.signIn();
  }

   signOut() async{
     googleAccount.value = await googleSignIn.signOut();
   }


}

