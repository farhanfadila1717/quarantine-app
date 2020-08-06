part of 'pages.dart';

class SignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    TextEditingController emailController = TextEditingController(text: "");
    TextEditingController passwordController = TextEditingController(text: "");
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: mainColor,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: Container(
                  height: 120,
                  width: widthSize,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                      image: AssetImage("assets/img/bg_login.png"),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: heightSize / 4,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: defaultMargin, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Sign In",
                          style: blackTextFont.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        height: 45,
                        width: widthSize - 2 * defaultMargin,
                        margin: EdgeInsets.only(top: 40, bottom: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 1, color: accentColor1),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15, right: 10),
                              child:
                                  SvgPicture.asset("assets/icons/ic_user.svg"),
                            ),
                            Container(
                              height: 45,
                              width: widthSize * 0.7,
                              child: TextField(
                                controller: emailController,
                                decoration: InputDecoration(
                                  hintText: "Email Address",
                                  hintStyle: greyTextFont,
                                  border: InputBorder.none,
                                ),
                                cursorColor: mainColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 45,
                        width: widthSize - 2 * defaultMargin,
                        margin: EdgeInsets.only(bottom: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 1, color: accentColor1),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15, right: 10),
                              child: SvgPicture.asset(
                                  "assets/icons/ic_password.svg"),
                            ),
                            Container(
                              height: 45,
                              width: widthSize * 0.7,
                              child: TextField(
                                controller: passwordController,
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: greyTextFont,
                                  border: InputBorder.none,
                                ),
                                cursorColor: mainColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          height: 45,
                          width: widthSize - 2 * defaultMargin,
                          child: FlatButton(
                            color: mainColor,
                            onPressed: () {},
                            child: Text(
                              "Sign In",
                              style: whiteTextFont.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: widthSize - 2 * defaultMargin,
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Dont have an account?",
                              style: greyTextFont,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpPage()));
                              },
                              child: Text(
                                "Sign Up",
                                style: blueTextFont.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
