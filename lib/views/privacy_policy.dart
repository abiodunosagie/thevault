import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:the_meat_vault/constants/constants.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Privacy Policy',
          style: AppTheme.kHeading.copyWith(
            color: TheVaultColor.kS0,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(
          color: TheVaultColor.kS0,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Column(
              children: [
                Text(
                  'Privacy Policy for The Vault Last Updated:',
                  style: AppTheme.kHeading.copyWith(
                    color: TheVaultColor.kS0,
                    fontSize: 20,
                  ),
                ),
                const Gap(20),
                Text(
                  'Thank you for using The Vault ("us", "we", or "our"). At The Vault, we value your privacy and are committed to safeguarding your personal information. This Privacy Policy outlines how we collect, use, and share your information through our e-commerce platform. By accessing or using The Vault, you agree to the terms of this Privacy Policy 1. Information We Collect We collect various types of information when you interact with The Vault: Personal information: Name, email address, phone number, billing and shipping addresses, payment information Account details: Usernames, passwords, and account preferences. Order history: Products purchased, transaction details, and order preferences. Communication information: Correspondence, feedback, and reviews 2. How We Use Your Information We use your information for the following purposes: Processing and fulfilling orders. Communicating with you about products, promotions, and orders Improving The Vaults services and user experience Personalizing your shopping journey.Addressing customer support inquiries.Complying with legal obligations.3. Data Sharing and Third PartiesWe may share your information with:Service providers: Payment processors, shipping partners, and marketing platforms.Legal authorities: When required by law or to protect our rights and users safety.Affiliates: For internal business operations.4. Cookies and Tracking TechnologiesCookies and similar technologies enhance your browsing experience on The Vault, help us understand usage patterns, and enable personalized content delivery.5. Your ChoicesManage cookies and tracking preferences via your browser settings.Opt-out of marketing communications at any time.Access, update, or delete your personal information by contacting us.6. SecurityWe employ reasonable security measures to protect your personal information. However, online data transmission and storage have inherent risks.7. Childrens PrivacyThe Vault is not intended for users under the age of [13/16]. We do not knowingly collect or store information from minors.8. International TransferYour data may be transferred to and processed in countries outside your residence, as outlined in this Privacy Policy.9. Updates to Privacy PolicyWe may update this Privacy Policy to reflect changes in our practices. Its advisable to review this policy periodically.10. Contact UsFor questions, concerns, or requests related to your personal information or this Privacy Policy, please reach out to us at [contact email/phone number].',
                  style: AppTheme.kBody.copyWith(
                    color: TheVaultColor.kS5,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
