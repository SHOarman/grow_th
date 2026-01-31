import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grow_th/core/routes/app_routes.dart';
import '../../core/theme/app_theme.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, dynamic>> _onboardingData = [
    {
      "image": "assets/image/ILLUSTRATOR.png",
      "text_prefix": "Bridge the Gap Between\nYou and the ",
      "text_highlight": "Big Players",
      "text_suffix": "",
      "description":
      "Big businesses use data, strategy, and insights. Small business owners usually don't have access to that",
    },
    {
      "image": "assets/image/ILLUSTRATOR (1).png",
      "text_prefix": "Learn how big\n companies",
      "text_highlight": "Grow",
      "text_suffix": "",
      "description":
      "Paste a company website or search their name Our AI analyzes their public data and business strategy for you.",
    },
    {
      "image": "assets/image/iLLUSTRATOR (2).png",
      "text_prefix": "Turn insights into ",
      "text_highlight": "Growth",
      "text_suffix": "",
      "description":
      "Get clear ideas you can apply to your own business — marketing, products, positioning, and growth strategy.",
    },
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onNext() {
    if (_currentPage < _onboardingData.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      Get.offNamed(AppRoutes.login);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppTheme.backgroundGradient,
        ),
        child: Stack(
          children: [
            Positioned(
              top: -100,
              left: 0,
              right: 0,
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      const Color(0xFF536DFE).withOpacity(0.3),
                      Colors.transparent,
                    ],
                    stops: const [0.0, 0.7],
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Expanded(
                      child: PageView.builder(
                        controller: _pageController,
                        onPageChanged: (index) {
                          setState(() {
                            _currentPage = index;
                          });
                        },
                        itemCount: _onboardingData.length,
                        itemBuilder: (context, index) {
                          final data = _onboardingData[index];
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Spacer(),
                              Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.asset(
                                    data["image"],
                                    height: 300,
                                    fit: BoxFit.contain,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        height: 300,
                                        width: 300,
                                        color: Colors.white10,
                                        child: const Icon(
                                          Icons.image,
                                          size: 50,
                                          color: Colors.white54,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(height: 40),
                              RichText(
                                text: TextSpan(
                                  style: const TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    height: 1.2,
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                  ),
                                  children: [
                                    TextSpan(text: data["text_prefix"]),
                                    TextSpan(
                                      text: data["text_highlight"],
                                      style: const TextStyle(
                                        color: AppTheme.orangeColor,
                                      ),
                                    ),
                                    TextSpan(text: data["text_suffix"]),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                data["description"],
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 14,
                                  height: 1.5,
                                ),
                              ),
                              const Spacer(),
                            ],
                          );
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: List.generate(
                            _onboardingData.length,
                                (index) => _buildDot(index == _currentPage),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: _onNext,
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 50,
                              vertical: 10,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            'Next',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDot(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 6),
      height: 6,
      width: isActive ? 24 : 6,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.white24,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}