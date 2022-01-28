
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'detail_page_args.dart';

/// Must pass arguments as [DetailPageArgs]
class DetailPage extends StatefulWidget {
  static const routeName = '/detail';

  final DetailPageArgs args;
  const DetailPage({Key? key, required this.args}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: Column(
        children: [
          Visibility(
            visible: _isLoading,
            child: const LinearProgressIndicator(),
          ),
          Expanded(
            child: WebView(
              initialUrl: widget.args.article.url,
              javascriptMode: JavascriptMode.unrestricted,
              onPageFinished: (url) {
                setState(() {
                  _isLoading = false;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
