// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `White Paper`
  String get navigation_white_paper {
    return Intl.message(
      'White Paper',
      name: 'navigation_white_paper',
      desc: '',
      args: [],
    );
  }

  /// `Road Map`
  String get navigation_road_map {
    return Intl.message(
      'Road Map',
      name: 'navigation_road_map',
      desc: '',
      args: [],
    );
  }

  /// `Fund`
  String get navigation_fund {
    return Intl.message(
      'Fund',
      name: 'navigation_fund',
      desc: '',
      args: [],
    );
  }

  /// `Team`
  String get navigation_team {
    return Intl.message(
      'Team',
      name: 'navigation_team',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get navigation_more {
    return Intl.message(
      'More',
      name: 'navigation_more',
      desc: '',
      args: [],
    );
  }

  /// `Help those in need`
  String get home_slogan {
    return Intl.message(
      'Help those in need',
      name: 'home_slogan',
      desc: '',
      args: [],
    );
  }

  /// `All the help given in the world is largely not measured and displayed fully and accurately. PPCB was born with the meaning of recognizing and preserving the value of that help, equal to the number of PPCB you own.\nPPCB will represent you and me, as well as the global blockchain community, to join hands to contribute to eliminating global problems: health, education, religion, environment.\nFrom there, PPCB will begin its mission with each PPCB coin having a starting value of $0.001. To represent a mine willing to help worth $50M.`
  String get home_mindset {
    return Intl.message(
      'All the help given in the world is largely not measured and displayed fully and accurately. PPCB was born with the meaning of recognizing and preserving the value of that help, equal to the number of PPCB you own.\nPPCB will represent you and me, as well as the global blockchain community, to join hands to contribute to eliminating global problems: health, education, religion, environment.\nFrom there, PPCB will begin its mission with each PPCB coin having a starting value of \$0.001. To represent a mine willing to help worth \$50M.',
      name: 'home_mindset',
      desc: '',
      args: [],
    );
  }

  /// `PPCB APP - MINT COIN`
  String get home_download_apps {
    return Intl.message(
      'PPCB APP - MINT COIN',
      name: 'home_download_apps',
      desc: '',
      args: [],
    );
  }

  /// `Android`
  String get home_android {
    return Intl.message(
      'Android',
      name: 'home_android',
      desc: '',
      args: [],
    );
  }

  /// `iOS`
  String get home_ios {
    return Intl.message(
      'iOS',
      name: 'home_ios',
      desc: '',
      args: [],
    );
  }

  /// `Pre-Sales`
  String get home_pre_sales {
    return Intl.message(
      'Pre-Sales',
      name: 'home_pre_sales',
      desc: '',
      args: [],
    );
  }

  /// `Presale will start later:`
  String get presale_title {
    return Intl.message(
      'Presale will start later:',
      name: 'presale_title',
      desc: '',
      args: [],
    );
  }

  /// `PPCB Presale`
  String get presale_component_title {
    return Intl.message(
      'PPCB Presale',
      name: 'presale_component_title',
      desc: '',
      args: [],
    );
  }

  /// `Connect wallet`
  String get presale_component_connenct {
    return Intl.message(
      'Connect wallet',
      name: 'presale_component_connenct',
      desc: '',
      args: [],
    );
  }

  /// `pay`
  String get presale_you_pay {
    return Intl.message(
      'pay',
      name: 'presale_you_pay',
      desc: '',
      args: [],
    );
  }

  /// `receive`
  String get presale_you_receive {
    return Intl.message(
      'receive',
      name: 'presale_you_receive',
      desc: '',
      args: [],
    );
  }

  /// `- After the countdown timer disappears. You can participate in the presale immediately through the interactive panel next to it.\n- Currently the meta-mask wallet link section is temporarily locked for thorough preparation.`
  String get presale_description {
    return Intl.message(
      '- After the countdown timer disappears. You can participate in the presale immediately through the interactive panel next to it.\n- Currently the meta-mask wallet link section is temporarily locked for thorough preparation.',
      name: 'presale_description',
      desc: '',
      args: [],
    );
  }

  /// `Buy`
  String get presale_buy {
    return Intl.message(
      'Buy',
      name: 'presale_buy',
      desc: '',
      args: [],
    );
  }

  /// `Please install Metamask wallet`
  String get meta_mask_connect_error {
    return Intl.message(
      'Please install Metamask wallet',
      name: 'meta_mask_connect_error',
      desc: '',
      args: [],
    );
  }

  /// `Please wait until the pre-sale begins`
  String get presale_later {
    return Intl.message(
      'Please wait until the pre-sale begins',
      name: 'presale_later',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Features`
  String get features {
    return Intl.message(
      'Features',
      name: 'features',
      desc: '',
      args: [],
    );
  }

  /// `ICO Chart`
  String get ico_chart {
    return Intl.message(
      'ICO Chart',
      name: 'ico_chart',
      desc: '',
      args: [],
    );
  }

  /// `Road Map`
  String get road_map {
    return Intl.message(
      'Road Map',
      name: 'road_map',
      desc: '',
      args: [],
    );
  }

  /// `Blog`
  String get blog {
    return Intl.message(
      'Blog',
      name: 'blog',
      desc: '',
      args: [],
    );
  }

  /// `Contract`
  String get contract {
    return Intl.message(
      'Contract',
      name: 'contract',
      desc: '',
      args: [],
    );
  }

  /// `PPCB is a cryptocurrency of compassion,\nborn to fulfill the mission of assisting places in need.`
  String get home_content {
    return Intl.message(
      'PPCB is a cryptocurrency of compassion,\nborn to fulfill the mission of assisting places in need.',
      name: 'home_content',
      desc: '',
      args: [],
    );
  }

  /// `In the world, there always exist unresolved issues in healthcare, education, religion, environment, and many other fields. These problems cannot be completely solved. We can only strive to minimize them.`
  String get white_paper_content_1 {
    return Intl.message(
      'In the world, there always exist unresolved issues in healthcare, education, religion, environment, and many other fields. These problems cannot be completely solved. We can only strive to minimize them.',
      name: 'white_paper_content_1',
      desc: '',
      args: [],
    );
  }

  /// `Many assistance efforts have been provided by communities of individuals willing to help. However, those aids seem too small and isolated.`
  String get white_paper_content_2 {
    return Intl.message(
      'Many assistance efforts have been provided by communities of individuals willing to help. However, those aids seem too small and isolated.',
      name: 'white_paper_content_2',
      desc: '',
      args: [],
    );
  }

  /// `PPCB - People Coin was created to acknowledge and preserve the values of assisting people from all over the world. If the desire to help others in the world is likened to a mineral mine, it will never be depleted, as this desire is an inherent aspect of the formation and development journey of humanity. This also implies that PPCB capitalization will be sufficiently large and continually increasing.`
  String get white_paper_content_3 {
    return Intl.message(
      'PPCB - People Coin was created to acknowledge and preserve the values of assisting people from all over the world. If the desire to help others in the world is likened to a mineral mine, it will never be depleted, as this desire is an inherent aspect of the formation and development journey of humanity. This also implies that PPCB capitalization will be sufficiently large and continually increasing.',
      name: 'white_paper_content_3',
      desc: '',
      args: [],
    );
  }

  /// `The funds received from the desire to help will be transferred by PPCB to where they are most needed, leveraging its extensive global network.`
  String get white_paper_content_4 {
    return Intl.message(
      'The funds received from the desire to help will be transferred by PPCB to where they are most needed, leveraging its extensive global network.',
      name: 'white_paper_content_4',
      desc: '',
      args: [],
    );
  }

  /// `When you purchase PPCB, you are contributing to the community support value, represented by the amount of PPCB you hold. By holding PPCB over time, the support value you provide will be delivered to those who truly need it through PPCB operations.`
  String get white_paper_content_5 {
    return Intl.message(
      'When you purchase PPCB, you are contributing to the community support value, represented by the amount of PPCB you hold. By holding PPCB over time, the support value you provide will be delivered to those who truly need it through PPCB operations.',
      name: 'white_paper_content_5',
      desc: '',
      args: [],
    );
  }

  /// `Participating in and holding PPCB may not yield significant economic benefits for owners. However, the value in terms of trust, spirituality, as well as the value of contributing to society is a complete and immense value that cannot be measured by any means.`
  String get white_paper_content_6 {
    return Intl.message(
      'Participating in and holding PPCB may not yield significant economic benefits for owners. However, the value in terms of trust, spirituality, as well as the value of contributing to society is a complete and immense value that cannot be measured by any means.',
      name: 'white_paper_content_6',
      desc: '',
      args: [],
    );
  }

  /// `Co-Founders`
  String get co_founders {
    return Intl.message(
      'Co-Founders',
      name: 'co_founders',
      desc: '',
      args: [],
    );
  }

  /// `Economic Expert`
  String get economic_expert {
    return Intl.message(
      'Economic Expert',
      name: 'economic_expert',
      desc: '',
      args: [],
    );
  }

  /// `Pharmacist`
  String get pharmacist {
    return Intl.message(
      'Pharmacist',
      name: 'pharmacist',
      desc: '',
      args: [],
    );
  }

  /// `Design Director`
  String get design_director {
    return Intl.message(
      'Design Director',
      name: 'design_director',
      desc: '',
      args: [],
    );
  }

  /// `Artist`
  String get artist {
    return Intl.message(
      'Artist',
      name: 'artist',
      desc: '',
      args: [],
    );
  }

  /// `Factory Director`
  String get factory_director {
    return Intl.message(
      'Factory Director',
      name: 'factory_director',
      desc: '',
      args: [],
    );
  }

  /// `Doctor`
  String get doctor {
    return Intl.message(
      'Doctor',
      name: 'doctor',
      desc: '',
      args: [],
    );
  }

  /// `IT Specialist`
  String get it_specialist {
    return Intl.message(
      'IT Specialist',
      name: 'it_specialist',
      desc: '',
      args: [],
    );
  }

  /// `Economic\nExpert`
  String get economic_expert_mobile {
    return Intl.message(
      'Economic\nExpert',
      name: 'economic_expert_mobile',
      desc: '',
      args: [],
    );
  }

  /// `Design\nDirector`
  String get design_director_mobile {
    return Intl.message(
      'Design\nDirector',
      name: 'design_director_mobile',
      desc: '',
      args: [],
    );
  }

  /// `Factory\nDirector`
  String get factory_director_mobile {
    return Intl.message(
      'Factory\nDirector',
      name: 'factory_director_mobile',
      desc: '',
      args: [],
    );
  }

  /// `IT\nSpecialist`
  String get it_specialist_mobile {
    return Intl.message(
      'IT\nSpecialist',
      name: 'it_specialist_mobile',
      desc: '',
      args: [],
    );
  }

  /// `Introduction`
  String get white_paper_intro {
    return Intl.message(
      'Introduction',
      name: 'white_paper_intro',
      desc: '',
      args: [],
    );
  }

  /// `Fund received (community)`
  String get white_paper_fund_from_community {
    return Intl.message(
      'Fund received (community)',
      name: 'white_paper_fund_from_community',
      desc: '',
      args: [],
    );
  }

  /// `Allocation`
  String get white_paper_allocation {
    return Intl.message(
      'Allocation',
      name: 'white_paper_allocation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your full name`
  String get valid_enter_full_name {
    return Intl.message(
      'Please enter your full name',
      name: 'valid_enter_full_name',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get field_required {
    return Intl.message(
      'This field is required',
      name: 'field_required',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a number`
  String get valid_enter_number {
    return Intl.message(
      'Please enter a number',
      name: 'valid_enter_number',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid URL`
  String get valid_enter_url {
    return Intl.message(
      'Please enter a valid URL',
      name: 'valid_enter_url',
      desc: '',
      args: [],
    );
  }

  /// `Please provide a valid email`
  String get please_provide_valid_email {
    return Intl.message(
      'Please provide a valid email',
      name: 'please_provide_valid_email',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters`
  String get password_invalid {
    return Intl.message(
      'Password must be at least 6 characters',
      name: 'password_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Password does not match`
  String get confirm_password_invalid {
    return Intl.message(
      'Password does not match',
      name: 'confirm_password_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid phone number`
  String get valid_phone {
    return Intl.message(
      'Please enter a valid phone number',
      name: 'valid_phone',
      desc: '',
      args: [],
    );
  }

  /// `System lost internet connection`
  String get system_lost_internet {
    return Intl.message(
      'System lost internet connection',
      name: 'system_lost_internet',
      desc: '',
      args: [],
    );
  }

  /// `System can not connect to server`
  String get system_can_not_connect_server {
    return Intl.message(
      'System can not connect to server',
      name: 'system_can_not_connect_server',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get refresh {
    return Intl.message(
      'Refresh',
      name: 'refresh',
      desc: '',
      args: [],
    );
  }

  /// `No data found`
  String get no_data_found {
    return Intl.message(
      'No data found',
      name: 'no_data_found',
      desc: '',
      args: [],
    );
  }

  /// `Fund`
  String get fund {
    return Intl.message(
      'Fund',
      name: 'fund',
      desc: '',
      args: [],
    );
  }

  /// `Team`
  String get team {
    return Intl.message(
      'Team',
      name: 'team',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get contact {
    return Intl.message(
      'Contact',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `Airdrop`
  String get airdrop_title {
    return Intl.message(
      'Airdrop',
      name: 'airdrop_title',
      desc: '',
      args: [],
    );
  }

  /// `Basic Airdrop`
  String get basic_airdrop {
    return Intl.message(
      'Basic Airdrop',
      name: 'basic_airdrop',
      desc: '',
      args: [],
    );
  }

  /// `Reward`
  String get reward {
    return Intl.message(
      'Reward',
      name: 'reward',
      desc: '',
      args: [],
    );
  }

  /// `How to participate`
  String get how_to_participate {
    return Intl.message(
      'How to participate',
      name: 'how_to_participate',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message(
      'Date',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Number of registrations`
  String get numberOfRegistrations {
    return Intl.message(
      'Number of registrations',
      name: 'numberOfRegistrations',
      desc: '',
      args: [],
    );
  }

  /// `Time frame`
  String get timeFrame {
    return Intl.message(
      'Time frame',
      name: 'timeFrame',
      desc: '',
      args: [],
    );
  }

  /// `Reward distribution`
  String get rewardDistribution {
    return Intl.message(
      'Reward distribution',
      name: 'rewardDistribution',
      desc: '',
      args: [],
    );
  }

  /// `Total PPCB received`
  String get totalPPCBReceived {
    return Intl.message(
      'Total PPCB received',
      name: 'totalPPCBReceived',
      desc: '',
      args: [],
    );
  }

  /// `Partners`
  String get white_paper_partner {
    return Intl.message(
      'Partners',
      name: 'white_paper_partner',
      desc: '',
      args: [],
    );
  }

  /// `Ambassador`
  String get ambassador_title {
    return Intl.message(
      'Ambassador',
      name: 'ambassador_title',
      desc: '',
      args: [],
    );
  }

  /// `Become Ambassador`
  String get become_ambassador {
    return Intl.message(
      'Become Ambassador',
      name: 'become_ambassador',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
