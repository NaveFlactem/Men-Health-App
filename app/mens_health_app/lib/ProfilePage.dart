import 'all.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          //Profile
          Container(
            color: Colors.green,
            child: ListView(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
