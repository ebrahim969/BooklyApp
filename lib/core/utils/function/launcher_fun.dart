import 'package:bookly_app/core/utils/styels.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launcherCustomUrl(context, String url) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        "Can't launch url for preview",
        style: Styles.textStyle14.copyWith(color: Colors.white),
      ),
      backgroundColor: Colors.red,
    ));
  }
}
