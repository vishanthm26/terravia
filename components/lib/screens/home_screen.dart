import 'package:flutter/material.dart';
import '../constants/theme_constants.dart';
import '../widgets/quick_action_button.dart';
import '../widgets/message_input.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _messageController = TextEditingController();

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 480),
          margin: const EdgeInsets.symmetric(horizontal: auto),
          child: Column(
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.fromLTRB(36, 24, 17, 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                      'https://cdn.builder.io/api/v1/image/assets/TEMP/b1f82f592cb07fe12f49c86c0760ed160e957eb978225f40076c2358ddb1b155?placeholderIfAbsent=true&apiKey=f0e3ad03bd5f4dd9898b336d6d9cc18b',
                      width: 24,
                      height: 24,
                      fit: BoxFit.contain,
                    ),
                    Row(
                      children: [
                        // Language Selector
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Text(
                                'EN',
                                style: ThemeConstants.montserratSmall.copyWith(
                                  color: ThemeConstants.primaryTextColor,
                                ),
                              ),
                              Image.network(
                                'https://cdn.builder.io/api/v1/image/assets/TEMP/89cda29c76c9b974b63276fdc0bee931de62856d353239736f53884e7769cbdc?placeholderIfAbsent=true&apiKey=f0e3ad03bd5f4dd9898b336d6d9cc18b',
                                width: 24,
                                height: 24,
                                fit: BoxFit.contain,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 24),
                        // Wallet
                        Image.network(
                          'https://cdn.builder.io/api/v1/image/assets/TEMP/226a84b5e782527137b0f2f612522d9db6d31cc2e9f9ef529840cf054e254624?placeholderIfAbsent=true&apiKey=f0e3ad03bd5f4dd9898b336d6d9cc18b',
                          width: 32,
                          height: 32,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Hero Section
              const SizedBox(height: 292),
              SizedBox(
                width: 238,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Hello, Jane',
                        style: ThemeConstants.montserratBold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "I'm Terravia",
                        style: ThemeConstants.montserratRegular,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'How can I help you today?',
                        style: ThemeConstants.montserratSmall,
                      ),
                    ),
                  ],
                ),
              ),

              // Message Input Section
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    MessageInput(
                      controller: _messageController,
                      onVoicePressed: () {
                        // Implement voice functionality
                      },
                    ),
                    const SizedBox(height: 16),
                    // Quick Actions
                    Row(
                      children: [
                        Column(
                          children: [
                            QuickActionButton(
                              text: 'Find my bus',
                              onPressed: () {},
                            ),
                            const SizedBox(height: 8),
                            QuickActionButton(
                              text: 'Buy tickets',
                              onPressed: () {},
                            ),
                          ],
                        ),
                        const SizedBox(width: 12),
                        QuickActionButton(
                          text: 'Live bus tracking',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}