import 'package:awesome_icons/awesome_icons.dart';
import 'package:facebook/reusable.dart';
import 'package:flutter/material.dart';
import 'Model/PostModel.dart';
import 'Model/StoryModel.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<StoryModel> storyScreen = [
    StoryModel(
      'Kan',
      'assets/img/profile/user1.jpg',
      'assets/img/profile/user1.jpg',
    ),
    StoryModel(
      'Barbie',
      'assets/img/profile/user2.jpg',
      'assets/img/profile/user2.jpg',
    ),
    StoryModel(
      'Abo Mohammed',
      'assets/img/profile/user3.jpg',
      'assets/img/profile/user3.jpg',
    ),
    StoryModel(
      'Bad Boy',
      'assets/img/profile/user4.jpg',
      'assets/img/profile/user4.jpg',
    ),
    StoryModel(
      'Stupid jobless',
      'assets/img/profile/user5.jpg',
      'assets/img/profile/user5.jpg',
    ),
    StoryModel(
      'Selfie Boy',
      'assets/img/profile/user6.jpg',
      'assets/img/profile/user6.jpg',
    ),
    StoryModel(
      "Mohammed's wife",
      'assets/img/profile/user7.jpg',
      'assets/img/profile/user7.jpg',
    ),
    StoryModel(
      'chief',
      'assets/img/profile/user8.jpg',
      'assets/img/profile/user8.jpg',
    ),
    StoryModel(
      'Gym Boy',
      'assets/img/profile/user9.jpg',
      'assets/img/profile/user9.jpg',
    ),
    StoryModel(
      'Tyrion Lannister',
      'assets/img/profile/user10.jpg',
      'assets/img/profile/user10.jpg',
    ),
  ];

  List<PostModel> postScreen = [
    PostModel(
      'assets/img/profile/user1.jpg',
      'Kan',
      'Hi Barbie',
    ),
    PostModel(
      'assets/img/profile/user2.jpg',
      'Barbie',
      'Hi Kan',
    ),
    PostModel(
      'assets/img/profile/user3.jpg',
      'Abo Mohammed',
      'what the !',
    ),
    PostModel(
      'assets/img/profile/user4.jpg',
      'Bad Boy',
      "Don't play with me",
    ),
    PostModel(
      'assets/img/profile/user5.jpg',
      'Stupid jobless',
      'i miss my college',
    ),
    PostModel(
      'assets/img/profile/user6.jpg',
      'Selfie Boy',
      "Mirror said 'Enough, try outside selfies!'",
    ),
    PostModel(
      'assets/img/profile/user7.jpg',
      "Mohammed's wife",
      'Good Morning Mothers',
    ),
    PostModel(
      'assets/img/profile/user8.jpg',
      'chief',
      "Burnt toast again. Fire department's regular.",
    ),
    PostModel(
      'assets/img/profile/user9.jpg',
      'Gym Boy',
      "Lost gains to pizza. Worth it though! ",
    ),
    PostModel(
      'assets/img/profile/user10.jpg',
      'Tyrion Lannister',
      "I wish i am the Monster you think i am.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // var args = ModalRoute.of(context)?.settings.arguments as UserModel;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'facebook',
          style: GoogleFonts.poppins(
            color: Colors.blueAccent,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          InkWell(
            child: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFe3e5e9),
              ),
              child: const Icon(
                FontAwesomeIcons.plus,
                color: Colors.black,
                size: 16,
              ),
            ),
            onTap: () {},
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            child: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFe3e5e9),
              ),
              child: const Icon(
                FontAwesomeIcons.search,
                color: Colors.black,
                size: 16,
              ),
            ),
            onTap: () {},
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            child: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFe3e5e9),
              ),
              child: const Icon(
                FontAwesomeIcons.facebookMessenger,
                color: Colors.black,
                size: 16,
              ),
            ),
            onTap: () {},
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
             Padding(
              padding: const EdgeInsets.only(left: 15,right: 5,bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/img/profile/user1.jpg",
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        child: Text(
                          "What's on your mind?",
                          style: GoogleFonts.poppins(color: Colors.black, fontSize: 14),
                        ),
                        onTap: (){},
                      ),
                    ],
                  ),
                  IconButton(
                    iconSize: 18,
                    onPressed:(){},
                    color: Colors.green,
                    icon: Icon(FontAwesomeIcons.images,),),
                ],
              ),
            ),
            const Divider(
              height: 8,
              thickness: 8,
              color: Color(0xFFe3e5e9),
            ),

            Container(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 2,
                right: 2,
              ),
              height: 210,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Story(storyScreen[index]);
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                  itemCount: storyScreen.length),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 8,
              thickness: 8,
              color: Color(0xFFe3e5e9),
            ),
            ListView.separated(
              shrinkWrap:
                  true, // Important to allow scrolling within a ListView
              physics:
                  const NeverScrollableScrollPhysics(), // Disable outer scrolling
              itemBuilder: (context, index) {
                return Post(postScreen[index]);
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  height: 8,
                  thickness: 8,
                  color: Color(0xFFe3e5e9),
                );
              },
              itemCount: postScreen.length,
            ),
            const Divider(
              height: 8,
              thickness: 8,
              color: Color(0xFFe3e5e9),
            ),
          ],
        ),
      ),
    );
  }
}
