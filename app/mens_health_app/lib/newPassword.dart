import 'package:mens_health_app/main.dart';

import 'all.dart';

class newPassword extends StatefulWidget {
  const newPassword({Key? key}) : super(key: key);

  @override
  newPasswordState createState() => newPasswordState();
}

class newPasswordState extends State<newPassword> {
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Center(
                child: SizedBox(
                    width: 350,
                    height: 150,
                    child: Image.asset('asset/images/ponderBox.png')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                controller: _newPasswordController,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    labelText: 'New Password',
                    labelStyle: TextStyle(color: Colors.black)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                controller: _confirmPasswordController,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(color: Colors.black)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                  ),
                  onPressed: () {
                    if (_newPasswordController.text ==
                        _confirmPasswordController.text) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Error'),
                            content: const Text('Passwords do not match'),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
