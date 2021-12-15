part of 'verify_page.dart';

extension VerifyChildren on VerifyPage {
  PreferredSizeWidget headerVerifyPage() {
    final controller = Get.put(VerifyController());
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      leading: IconButton(
        color: Colors.blue,
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_back_ios,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => controller.onNext(),
          child: const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Text(
              'Next help?',
              style: TextStyle(color: Colors.grey, fontSize: 14.0),
            ),
          ),
        ),
      ],
    );
  }

  Widget bodyVerifyPage() {
    final controller = Get.put(VerifyController());
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 48.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Verification Code',
            style: TextStyle(
                color: Colors.black,
                fontSize: 23.0,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Text(
            'Please type the verification code sent to \n +84 39 263 4700',
            style: TextStyle(color: Colors.grey, fontSize: 16.0),
          ),
          const SizedBox(
            height: 24.0,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              key: controller.verifyCodeKey,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              onChanged: (text) {
                controller.onVerifyCode(text);
              },
              decoration: const InputDecoration(hintText: 'Enter code in here'),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 32.0),
            alignment: Alignment.center,
            child: RichText(
                text: const TextSpan(
                    text: "I don't receive a code!",
                    style: TextStyle(color: Colors.grey, fontSize: 16.0),
                    children: [
                  TextSpan(
                    text: 'Please resend',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ])),
          ),
        ],
      ),
    );
  }
}
