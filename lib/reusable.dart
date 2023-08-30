import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Model/PostModel.dart';
import 'Model/StoryModel.dart';

class TextFieldCu extends StatelessWidget {
  bool? obscureTextCs;
  String title;
  IconButton? suffixIconCs;
  TextEditingController? textController;
  TextInputType? inputType;

  TextFieldCu(this.title,
      {super.key, this.suffixIconCs,
      this.obscureTextCs,
      this.textController,
      this.inputType});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 10,
          ),
          child: TextField(
            keyboardType: inputType,
            controller: textController,
            cursorColor: Colors.grey,
            obscureText: obscureTextCs ?? false,
            decoration: InputDecoration(
              label: Text(
                title,
                  style: GoogleFonts.poppins(),
              ),
              suffixIcon: suffixIconCs,
              labelStyle: const TextStyle(color: Colors.grey),
              border: InputBorder.none,
              // Hide the default TextField border
            ),
          ),
        ));
  }
}

class Story extends StatelessWidget {
  StoryModel storyModel;

  Story(this.storyModel, {super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 120,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Opacity(
              opacity: 0.8,
              child: Image.asset(
                storyModel.storyImg,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Stack(
                children: [
                  Text(
                    storyModel.text,
                    style: GoogleFonts.poppins(
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 1.0
                        ..color = Colors.black, // Color of the stroke
                      fontWeight: FontWeight.w900,
                      fontSize: 12, // Adjust font size as needed
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    storyModel.text,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 12, // Match the font size with the stroke text
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              )


            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: CircleAvatar(
                  radius: 22.5,
                  backgroundImage: AssetImage(
                    storyModel.profileImg,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LikeCommentShare extends StatelessWidget {
  String img;
  String text;
  LikeCommentShare(this.img, this.text, {super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(img),
        const SizedBox(
          width: 10,
        ),
        Text(text,style: GoogleFonts.poppins(fontSize: 12,),),
      ],
    );
  }
}

class Post extends StatelessWidget {
  PostModel postModel;

  Post(this.postModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(postModel.img),
                radius: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    postModel.name,
                    style:  GoogleFonts.poppins(fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                       Text(
                        '8h . ',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                      Image.asset(
                        'assets/img/earth.png',
                        width: 10,
                        height: 10,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ],
              ),
              const Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.more_horiz),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.close),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            postModel.text,
            style: GoogleFonts.poppins(),
          ),
          SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 10,
                right: 10,
                left: 10,
              ),
              child: Row(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/img/like.jpg',
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '16',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                   Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '16',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'comments',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 40,
            decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(
              color: Colors.grey,
              width: .3,
            ))),
            padding: const EdgeInsets.only(top: 15, bottom: 5),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                LikeCommentShare('assets/img/singleLike.jpg', 'Like'),
                LikeCommentShare('assets/img/comment.jpg', 'Comment'),
                LikeCommentShare('assets/img/share.png', 'Share'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
