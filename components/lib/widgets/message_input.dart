import 'package:flutter/material.dart';
import '../constants/theme_constants.dart';

class MessageInput extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onVoicePressed;

  const MessageInput({
    Key? key,
    required this.controller,
    required this.onVoicePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: ThemeConstants.inputBackgroundColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: TextField(
              controller: controller,
              style: ThemeConstants.montserratSmall,
              decoration: InputDecoration(
                hintText: 'Message Terravia......',
                hintStyle: ThemeConstants.montserratSmall.copyWith(
                  color: ThemeConstants.placeholderTextColor,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        const SizedBox(width: 17),
        Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: ThemeConstants.inputBackgroundColor,
            borderRadius: BorderRadius.circular(300),
          ),
          child: IconButton(
            icon: Image.network(
              'https://cdn.builder.io/api/v1/image/assets/TEMP/6cb8cf4c41845c4ef9e78e1bc3bc7c00cc5e33ee1a88ca106ab335d1eeccb7e8?placeholderIfAbsent=true&apiKey=f0e3ad03bd5f4dd9898b336d6d9cc18b',
              width: 11,
              height: 17,
              fit: BoxFit.contain,
            ),
            onPressed: onVoicePressed,
            padding: const EdgeInsets.all(12),
          ),
        ),
      ],
    );
  }
}