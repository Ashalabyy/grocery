import 'package:auth_3/Screens/Home/home_screen.dart';
import 'package:flutter/material.dart';
import '../../constants/form_constants.dart';
import '../../widgets/custom_suffix_icon.dart';
import '../SignUp/sing_up_screen.dart';
import '../../constants/Dont_or_Have_acc.dart';

class SiginForm extends StatefulWidget {
  const SiginForm({super.key});
  @override
  State<SiginForm> createState() => _SiginFormState();
}

class _SiginFormState extends State<SiginForm> {
  final _globalKey = GlobalKey<FormState>();
  var isVisible = true;
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _globalKey,
      child: Column(
        children: [
          buildEmail(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          buildPassword(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          DontorHaveAcc(
            text: 'Dont have account ?',
            text2: 'Sign up',
            onpress: () => Navigator.of(context)
                .pushReplacementNamed(SignUpScreen.routeName),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          buildLoginButton(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
        ],
      ),
    );
  }

  /// ************************* EMAIL INPUT FIELD *************************************/
  TextFormField buildEmail() {
    return TextFormField(
      onChanged: (value) {
        email = value;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return kEmailNullError;
        } else if (!value.contains('@')) {
          return kInvalidEmailError;
        }
        return null;
      },
      cursorColor: const Color(0xFF006400).withOpacity(0.8),
      decoration: defaultInputDecoration.copyWith(
        hintText: 'Enter your email',
        hintStyle: TextStyle(
          fontSize: 14,
          color: const Color(0xFF006400).withOpacity(0.3),
        ),
        prefixIcon: const CustomSuffixIcon(svgicon: 'assets/icons/Mail.svg'),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }

  ///*************************** PASSWORD INPUT FIELD *************************************/
  TextFormField buildPassword() {
    return TextFormField(
      onChanged: (value) {
        password = value;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return kPassNullError;
        } else if (value.length < 6) {
          return kShortPassError;
        }
        return null;
      },
      cursorColor: const Color(0xFF006400).withOpacity(0.8),
      obscureText: isVisible,
      decoration: defaultInputDecoration.copyWith(
        labelText: 'Enter your Password',
        hintText: kPassNullError,
        hintStyle: const TextStyle(
          color: Color(0xFF006400),
        ),
        labelStyle: TextStyle(
          fontSize: 14,
          color: const Color(0xFF006400).withOpacity(0.3),
        ),
        prefixIcon: const CustomSuffixIcon(svgicon: 'assets/icons/Lock.svg'),
      ),
    );
  }

  ///*************************** LOGIN BUTTON *************************************/
  Widget buildLoginButton() {
    return ElevatedButton(
      onPressed: _submitForm,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF006400).withOpacity(0.8),
        minimumSize: Size(MediaQuery.of(context).size.width, 40),
        elevation: 0,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
      child: const Text(
        "login",
      ),
    );
  }

  void _submitForm() async {
    Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
  }
}
