part of 'sign_up_page.dart';

extension SignUpChildren on SignUpPage {
  Widget signUpForm() {
    final controller = Get.put(SignUpController());
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 32.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Let's Go!",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 3.0,
            ),
            const Text(
              'Create account to continue',
              style: TextStyle(color: Colors.grey, fontSize: 16.0),
            ),
            rowAuthNetworkSocial(),
            const SizedBox(
              height: 24.0,
            ),
            formInputData(),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              width: double.infinity,
              height: 56.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.blue,
              ),
              child: MaterialButton(
                onPressed: () => controller.onSignUp(),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget rowAuthNetworkSocial() {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CircleAvatar(
            backgroundColor: Colors.black,
            child: SizedBox(),
          ),
          SizedBox(
            width: 12.0,
          ),
          CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.facebook,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 12.0,
          ),
          CircleAvatar(
            backgroundColor: Colors.redAccent,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }

  Widget formInputData() {
    return Column(
      children: [
        const TextField(
          decoration: InputDecoration(
            hintText: 'Email or Phone',
            hintStyle: TextStyle(
              color: Color(0xFF424242),
              fontSize: 16.0,
            ),
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 24.0,
        ),
        const TextField(
          decoration: InputDecoration(
            hintText: 'Username',
            hintStyle: TextStyle(
              color: Color(0xFF424242),
              fontSize: 16.0,
            ),
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 24.0,
        ),
        const TextField(
          decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: TextStyle(
              color: Color(0xFF424242),
              fontSize: 16.0,
            ),
            border: OutlineInputBorder(),
            suffixIcon: Icon(
              Icons.visibility_outlined,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(
          height: 24.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'I agree with Terms of Use',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold),
            ),
            Switch(value: false, onChanged: (isSelected) {}),
          ],
        )
      ],
    );
  }
}
