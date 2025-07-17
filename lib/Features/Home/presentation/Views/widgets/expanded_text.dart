import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ExpandableTextInline extends StatefulWidget {
  final String text;
  final TextStyle style;
  final int maxLines;

  const ExpandableTextInline({
    super.key,
    required this.text,
    required this.style,
    this.maxLines = 5,
  });

  @override
  _ExpandableTextInlineState createState() => _ExpandableTextInlineState();
}

class _ExpandableTextInlineState extends State<ExpandableTextInline> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    String firstPart = widget.text;
    String secondPart = '';

    final textSpan = TextSpan(text: widget.text, style: widget.style);
    final textPainter = TextPainter(
      text: textSpan,
      maxLines: widget.maxLines,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(maxWidth: MediaQuery.of(context).size.width);

    if (textPainter.didExceedMaxLines) {
      int endIndex =
          textPainter
              .getPositionForOffset(
                Offset(textPainter.width, textPainter.height),
              )
              .offset;

      endIndex = endIndex - 10; // احتياطي لكلمة More
      if (endIndex < 0) endIndex = 0;
      firstPart = widget.text.substring(0, endIndex).trim();
      secondPart = widget.text.substring(endIndex).trim();
    }

    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        style: widget.style,
        children: [
          TextSpan(text: _expanded ? widget.text : '$firstPart... '),
          if (!_expanded && secondPart.isNotEmpty)
            TextSpan(
              text: 'More',
              style: widget.style.copyWith(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              recognizer:
                  TapGestureRecognizer()
                    ..onTap = () {
                      setState(() {
                        _expanded = true;
                      });
                    },
            ),
          if (_expanded && secondPart.isNotEmpty)
            TextSpan(
              text: ' Less',
              style: widget.style.copyWith(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              recognizer:
                  TapGestureRecognizer()
                    ..onTap = () {
                      setState(() {
                        _expanded = false;
                      });
                    },
            ),
        ],
      ),
    );
  }
}
