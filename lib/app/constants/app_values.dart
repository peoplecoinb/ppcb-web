import 'package:flutter/material.dart';

import '../blocs/language/language_select_state.dart';
import '../extensions/extensions.dart';
import 'app_images.dart';

double viewPaddingTop(BuildContext context) => MediaQuery.of(context).viewPadding.top;
double viewPaddingBot(BuildContext context) => MediaQuery.of(context).viewPadding.bottom;
bool isShowKeyboard(BuildContext context) => MediaQuery.of(context).viewInsets.bottom > 0;

const String APP_NAME = 'PPCB - PEOPLE COIN';

/// FLAVOR = dev => development
/// FLAVOR = prod => product
late final String flavor;

enum AppLocale {
  vi(Locale('vi', 'VN')),
  en(Locale('en', 'US'));

  const AppLocale(this._locale);
  final Locale _locale;
  Locale get value => _locale;
}

const int DASH_BOARD_ID = 0;

const double DASHBOARD_NAVIGATION_HEIGHT = 90;

final List<Color> availablePickerColors = <Color>[
  HexColor.fromHex('#FBEDA8'),
  HexColor.fromHex('#DCE8AE'),
  HexColor.fromHex('#9EDAC0'),
  HexColor.fromHex('#A1DFD7'),
  HexColor.fromHex('#9CCFDD'),
  HexColor.fromHex('#A6BBDC'),
  HexColor.fromHex('#B9BDD7'),
  HexColor.fromHex('#E5D9ED'),
  HexColor.fromHex('#EDBDD8'),
  HexColor.fromHex('#F1C3C9'),
  HexColor.fromHex('#EDB1B9'),
  HexColor.fromHex('#EABCAB'),
];

final List<LanguageSelectState> appLanguages = <LanguageSelectState>[
  LanguageSelectState(
    imageUrl: AppImages.png('english'),
    languageName: 'English',
    languageCode: AppLocale.en.value.languageCode,
    countryCode: AppLocale.en.value.countryCode,
  ),
  LanguageSelectState(
    imageUrl: AppImages.png('vietnam'),
    languageName: 'Tiếng Việt',
    languageCode: AppLocale.vi.value.languageCode,
    countryCode: AppLocale.vi.value.countryCode,
  ),
];

const int INDEX_NOT_FOUND = -1;

List<String> authorizedRoutes = <String>[
  // Routes.LOGIN,
  // Routes.home.route,
  // Routes.CHANGE_PIN,
];

const List<String> NAVIGATION_MENU = <String>[
    'navigation_white_paper',
    'navigation_road_map',
    'navigation_fund',
    'navigation_team',
    'navigation_more',
];

const List<String> NAVIGATION_SOCIAL = <String>[
    'youtube_logo',
    'twitter_logo',
    'telegram_logo',
    'facebook_logo',
    'discord_logo',
];

const double MOBILE_PAGE_MAX_WIDTH = 990;
const double TABLET_PAGE_MAX_WIDTH = 1100;
const double DESKTOP_PAGE_MAX_WIDTH = 1200;
const double DESKTOP_PAGE_MAX_HEIGHT = 800;

const String TELEGRAM_LINK = 'https://t.me/ppcb_community';
const String EMAIL_LINK = 'team.ppcb@gmail.com';

const String aidrop_html = r'''
<h1 style="text-align: left;"><span style="color: #339966;"><strong>Basic Airdrop</strong></span></h1>
<p><strong>Reward:</strong> 101,000 PPCB</p>
<p><strong>How to participate:</strong></p>
<ul>
<li>
<p>Join Telegram <a href="https://t.me/ppcb_community" target="_blank" rel="noopener noreferrer nofollow">https://t.me/ppcb_community</a></p>
</li>
<li>
<p>Send your BNB wallet address to the email <a href="mailto:team.ppcb@gmail.com" target="_blank" rel="noopener noreferrer nofollow">team.ppcb@gmail.com</a> with the subject line &ldquo;Join basic airdrop&rdquo;.</p>
</li>
</ul>
<p><strong>Reward distribution:</strong></p>
<p><strong>Phase 1:</strong> Receive 1,000 PPCB on 01/08/2024.</p>
<p><strong>Phase 2:</strong> After PPCB is listed on a centralized exchange, 100,000 PPCB will be sent to the participating wallets.</p>
<p>&nbsp;</p>
<hr />
<h1 style="text-align: left;"><span style="color: #ffff00;"><strong>Mega Airdrop</strong></span></h1>
<p><strong>Number of registrations:</strong> First 2000 participants</p>
<p><strong>Time frame:</strong> From now until 0:00 on 01/08/2024</p>
<p><strong>Reward:</strong> More than 6,000,000 PPCB, estimated value between $1000 - $5000</p>
<p><strong>PPCB will be distributed over 7 phases:</strong></p>
<ul>
<li>
<p><strong>Phase 1:</strong> 01/08/2024: Receive 100 PPCB</p>
</li>
<li>
<p><strong>Phase 2:</strong> 01/09/2024: Receive 1,000 PPCB</p>
</li>
<li>
<p><strong>Phase 3:</strong> 01/10/2024: Receive 10,000 PPCB</p>
</li>
<li>
<p><strong>Phase 4:</strong> 01/11/2024: Receive 100,000 PPCB</p>
</li>
<li>
<p><strong>Phase 5:</strong> 01/12/2024: Receive 1,000,000 PPCB</p>
</li>
<li>
<p><strong>Phase 6:</strong> 01/06/2025: Receive 2,000,000 PPCB</p>
</li>
<li>
<p><strong>Phase 7:</strong> 01/12/2025: Receive 3,000,000 PPCB</p>
</li>
</ul>
<p><strong>Total PPCB received:</strong> 6,111,100 PPCB, a substantial reward as a token of appreciation for those who have supported and followed PPCB from the early stages.</p>
<p><strong>How to participate:</strong></p>
<ul>
<li>
<p>Join Telegram <a href="https://t.me/ppcb_community" target="_blank" rel="noopener noreferrer nofollow">https://t.me/ppcb_community</a></p>
</li>
<li>
<p>Send your BNB wallet address to <a href="mailto:team.ppcb@gmail.com" target="_blank" rel="noopener noreferrer nofollow">team.ppcb@gmail.com</a> with the subject line "Join mega airdrop" .</p>
</li>
<li>
<p>Include a transaction confirmation showing you have transferred 5 USDT from your wallet to our USDT wallet address.</p>
</li>
<li>
<p>Leave a congratulatory comment for the project on our specified YouTube video.</p>
</li>
<li>
<p>Receive confirmation of successful airdrop participation.</p>
</li>
</ul>
<h1 style="text-align: center;"><span style="color: #339966;"><strong>PPCB will be an excellent choice for you!</strong></span></h1>
''';

const Map<String, dynamic> airdropDes = <String, dynamic>{
  'basicAirdrop': <String, dynamic>{
    'reward': '101,000 PPCB',
    'howToParticipate': <String>[
      'Join the telegram group $TELEGRAM_LINK.',
      'Send your BNB wallet address to $EMAIL_LINK with the subject line "Join basic airdrop".',
    ],
    'rewardDistribution': <Map<String, String>>[
      <String, String>{
        'date': '01/08/2024',
        'amount': '1,000 PPCB'
      },
      <String, String>{
        'condition': 'After PPCB is listed on a centralized exchange',
        'amount': '100,000 PPCB'
      }
    ]
  },
  'megaAirdrop': <String, dynamic>{
    'numberOfRegistrations': 'First 2000 participants',
    'timeFrame': 'From now until 0:00 on 01/08/2024',
    'reward': r'More than 6,000,000 PPCB, estimated value between $1000 - $5000',
    'rewardDistribution': <Map<String, String>>[
      <String, String>{
        'date': '01/08/2024',
        'amount': '100 PPCB'
      },
      <String, String>{
        'date': '01/09/2024',
        'amount': '1,000 PPCB'
      },
      <String, String>{
        'date': '01/10/2024',
        'amount': '10,000 PPCB'
      },
      <String, String>{
        'date': '01/11/2024',
        'amount': '100,000 PPCB'
      },
      <String, String>{
        'date': '01/12/2024',
        'amount': '1,000,000 PPCB'
      },
      <String, String>{
        'date': '01/06/2025',
        'amount': '2,000,000 PPCB'
      },
      <String, String>{
        'date': '01/12/2025',
        'amount': '3,000,000 PPCB'
      }
    ],
    'totalPPCBReceived': '6,111,100 PPCB, a substantial reward as a token of appreciation for those who have supported and followed PPCB from the early stages.',
    'howToParticipate': <String>[
      'Join the telegram group $TELEGRAM_LINK.',
      'Send your BNB wallet address to $EMAIL_LINK with the subject line "Join mega airdrop".',
      'Include a transaction confirmation showing you have transferred 7 USDT from your wallet to our USDT wallet address.',
      'Leave a congratulatory comment for the project on our specified YouTube video.',
      'Receive confirmation of successful airdrop participation.'
    ]
  }
};