import 'dart:ui';

import 'package:material_ui/material_ui.dart';
import 'package:nft_marketplace/core/constants/app_colors.dart';
import 'package:nft_marketplace/core/routing/app_routes.dart';

class OnboardingView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/onboarding.png'),
          ),
        ),

        child: Padding(
          padding: const EdgeInsets.fromLTRB(26, 80, 26, 100),
          child: Column(
            children: [
              Text(
                'Welcome to NFT Marketplace',
                style: const TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),

              Spacer(),

              ClipRRect(
                borderRadius: BorderRadius.circular(27),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 13.5, sigmaY: 13.5),
                  child: Container(
                    width: 306,
                    height: 195,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.01),
                      borderRadius: BorderRadius.circular(27),
                      border: BoxBorder.all(
                        color: Colors.white.withValues(alpha: 0.3),
                        width: 0.9,
                      ),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(27),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Explore and Mint NFTs',
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.315,
                              shadows: [
                                Shadow(
                                  offset: Offset(0, 9),
                                  blurRadius: 54,
                                  color: Colors.black.withValues(alpha: 0.50),
                                ),
                              ],
                            ),
                          ),

                          Text(
                            'You can buy and sell the NFTs of the best artists in the world.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.secondaryText,
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              height: 16 / 12,
                              shadows: [
                                Shadow(
                                  offset: Offset(0, 9),
                                  blurRadius: 54,
                                  color: Colors.black.withValues(alpha: 0.50),
                                ),
                              ],
                              letterSpacing: -0.07,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 27),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff97A9F6)
                                    .withValues(alpha: 0.5),
                              ),
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                  context,
                                  AppRoutes.mainLayout,
                                );
                              },
                              child: Text(
                                'Get started now',
                                style: const TextStyle(
                                  color: AppColors.primaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: -0.36,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
