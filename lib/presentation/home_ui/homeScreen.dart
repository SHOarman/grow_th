import 'dart:async';
import 'package:flutter/material.dart';
import 'package:grow_th/widgets/insightCard.dart';
import 'package:grow_th/widgets/publicdata&aimode.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController(viewportFraction: 0.7);
  int _currentPage = 0;
  Timer? _timer;

  final List<Map<String, String>> _insights = [
    {
      "icon": "assets/image/ai 1.png",
      "title": "Business Model Overview",
      "desc":
          "Understand how successful companies structure their revenue and operations.",
    },

    {
      "icon": "assets/image/ai 1 (1).png",
      "title": "Business Model Overview",
      "desc":
          "Understand how successful companies structure their revenue and operations",
    },
    {
      "icon": "assets/image/ai 1 (2).png",
      "title": "Product / Service Structure",
      "desc":
          "See how they package and position their offerings for maximum market appeal.",
    },
    {
      "icon": "assets/image/ai 1 (3).png",
      "title": "Target Audience Insights",
      "desc":
          "Learn who they're serving and how they tailor their approach to customer needs.",
    },
    {
      "icon": "assets/image/ai 1 (4).png",
      "title": "Growth Ideas for Your Business",
      "desc":
          "Get personalized, actionable recommendations to accelerate your own growth.",
    },
  ];

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_pageController.hasClients) {
        int nextPage = (_currentPage + 1) % _insights.length;
        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF07052F),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    "Growᵗʰ",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 40),

                // Hero Section
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                    children: [
                      TextSpan(text: "Learn from "),
                      TextSpan(
                        text: "big\ncompanies. ",
                        style: TextStyle(color: Color(0xFFFF8A65)),
                      ),
                      TextSpan(
                        text: "Grow\n",
                        style: TextStyle(color: Color(0xFFFF8A65)),
                      ),
                      TextSpan(text: "smarter."),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Analyze public data from leading companies\n and turn insights into real growth ideas.",
                  style: TextStyle(color: Color(0xffB3B7D2)),
                ),

                const SizedBox(height: 40),

                // Input Section (Placeholder)
                _buildInputSection(),

                const SizedBox(height: 20),
                Center(
                  child: Text(
                    "Only Public data is analyzed",
                    style: TextStyle(
                      color: Color(0xffB3B7D2),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                //=============================sctionicon=================================
                FeatureSection(),
                //=============================sctionicon=================================
                const SizedBox(height: 40),

                // Insights Title
                const Text(
                  "What you'll receive",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text("Swipe to explore all insights"),
                const SizedBox(height: 20),

                //========================horzential Slider view automtic===============================================
                SizedBox(
                  height: 210,
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (index) =>
                        setState(() => _currentPage = index),
                    itemCount: _insights.length,
                    itemBuilder: (context, index) {
                      return InsightCard(
                        iconPath: _insights[index]["icon"]!,
                        title: _insights[index]["title"]!,
                        description: _insights[index]["desc"]!,
                      );
                    },
                  ),
                ),

                const SizedBox(height: 16),

                // Progress/Slider Dots
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      _insights.length,
                      (index) => _buildDot(index),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDot(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 8,
      width: _currentPage == index ? 24 : 8,
      decoration: BoxDecoration(
        color: _currentPage == index ? const Color(0xFFFF8A65) : Colors.white24,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  Widget _buildInputSection() {
    return Container(
      height: 124,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFF0A0E2B),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.blue.withValues(alpha: 0.2)),
      ),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Company name or URL",
              hintStyle: TextStyle(color: Colors.white30),
              border: InputBorder.none,
            ),
          ),
          //const SizedBox(height: 20),
          _buildButton(),
        ],
      ),
    );
  }

  Widget _buildButton() {
    return GestureDetector(
      onTap: () {
        print("jshoifhsihw");
      },
      child: Container(
        width: double.infinity,
        height: 52,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xffFF5900), Color(0xff4185FF)],
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0xff000000),
              blurRadius: 6.8,
              offset: Offset(0.0, 0.14),
            ),
          ],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Analyze",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(width: 10),
              Image.asset("assets/image/ai (2) 1.png", height: 22, width: 22),
            ],
          ),
        ),
      ),
    );
  }
}
