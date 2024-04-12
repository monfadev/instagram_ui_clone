part of '../screens.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isEmailValid = false;
  bool _isPasswordValid = false;

  bool _isHidePassword = false;
  bool _isLogin = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height - 90),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo/instagram.png',
                    height: 50,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: greyColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: greyBorderColor,
                        width: 0.3,
                      ),
                    ),
                    child: TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Phone number, username or email',
                        hintStyle: const TextStyle(
                          color: greyDarkColor,
                          fontSize: 14,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isEmailValid = !_isEmailValid;
                              _emailController.clear();
                            });
                          },
                          child: _isEmailValid ? const Icon(Icons.close_rounded) : const SizedBox(),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _isEmailValid = value.isNotEmpty;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: greyColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: greyBorderColor,
                        width: 0.3,
                      ),
                    ),
                    child: TextFormField(
                      controller: _passwordController,
                      keyboardType: TextInputType.text,
                      obscureText: !_isHidePassword,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                          color: greyDarkColor,
                          fontSize: 14,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isHidePassword = !_isHidePassword;
                            });
                          },
                          child: (!_isHidePassword) ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _isPasswordValid = value.isNotEmpty;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: blueColor,
                          fontWeight: medium,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: _isLogin
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _isPasswordValid && _isEmailValid ? blueColor : blueSkyColor,
                              foregroundColor: blueColor,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: _isPasswordValid && _isEmailValid
                                ? () {
                                    setState(() {
                                      _isEmailValid = true;
                                      _isPasswordValid = true;
                                      _isLogin = true;
                                    });
                                    Future.delayed(const Duration(seconds: 2), () {
                                      setState(() {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const MainScreen(),
                                          ),
                                        );
                                        _isLogin = false;
                                      });
                                    });
                                  }
                                : null,
                            child: const Text(
                              'Log In',
                              style: TextStyle(
                                color: whiteColor,
                              ),
                            ),
                          ),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: greyBorderColor,
                          thickness: 0.3,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'OR',
                        style: TextStyle(
                          color: greyDarkColor,
                          fontWeight: medium,
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Divider(
                          color: greyBorderColor,
                          thickness: 0.3,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/logo/facebook.png', height: 20),
                      const SizedBox(width: 10),
                      const Text(
                        'Log In With Facebook',
                        style: TextStyle(
                          color: blueColor,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 45,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: greyBorderColor,
              width: 0.3,
            ),
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account? ",
              style: TextStyle(
                color: greyDarkColor,
                letterSpacing: 0.1,
              ),
            ),
            Text(
              ' Sign Up.',
              style: TextStyle(
                color: blueColor,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
