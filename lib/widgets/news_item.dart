import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/news_model.dart';

class NewsItem extends StatefulWidget {
  const NewsItem({super.key, required this.newsModel});
  final NewsModel newsModel;

  @override
  State<NewsItem> createState() => _NewsItemState();
}

class _NewsItemState extends State<NewsItem> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            _launchUrl();
          },
          child: Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              // color: Colors.grey[800],
              image: DecorationImage(
                image: NetworkImage(widget.newsModel.urlToImage),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          maxLines: 2,
          textAlign: TextAlign.start,
          widget.newsModel.title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Text(
            overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,

            maxLines: isExpanded ? null : 2,

            widget.newsModel.description,
            style: const TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  Future<void> _launchUrl() async {
    final Uri url = Uri.parse(widget.newsModel.url);

    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
