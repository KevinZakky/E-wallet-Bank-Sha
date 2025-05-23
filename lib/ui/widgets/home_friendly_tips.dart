import 'package:ewallet_project_app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeFriendlyTips extends StatelessWidget {
  final String imageUrl;
  final String title;
  final Uri url;

  const HomeFriendlyTips(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () async {
          if (await canLaunchUrl(url)) {
            launchUrl(url);
          }
        },
        child: Container(
          width: 155,
          height: 176,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: whiteColor),
          child: Column(
            children: [
              ClipRRect(
                borderRadius:
                    BorderRadiusDirectional.vertical(top: Radius.circular(20)),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  title,
                  style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                      overflow: TextOverflow.ellipsis),
                  maxLines: 2,
                ),
              )
            ],
          ),
        ));
  }
}
