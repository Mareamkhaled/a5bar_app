import 'package:flutter/material.dart';

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
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            // color: Colors.grey[800],
            image: DecorationImage(
              image: NetworkImage(widget.newsModel.url ?? 'assets/opinion.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            height: 100,
            // color: Colors.black54,
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(color: Colors.black12),
              height: 50,
              width: double.infinity,

              child: Text(
                maxLines: 2,
                textAlign: TextAlign.center,
                widget.newsModel.title ?? "No Title",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
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

            widget.newsModel.description ?? "No Description",
            style: const TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
