import 'dart:io';
import 'package:flutter/material.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen();
  @override
  _FAQScreenState createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  TextStyle style = const TextStyle(
      color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold);
  final List<Step> _steps = getSteps();
  //change with real customer data in production
  String defaultPhoneNumber = "+2499123456789";
  String defaultMailAddress = "info@amanapp.com";
  String defaultWhatsappNumber = "+249930040142";
  String defaultMailsubject = "Contact";
  String defaultWhatsappText = "السلام عليكم ورحمة الله";

  String youTubeUrl = "";

//  YoutubePlayerController _youtubController;
/*
  void launchWhatsApp({
    String phone,
    String message,
  }) async {
    String url() {
      if (Platform.isAndroid) {
        return "https://wa.me/$phone/?text=${Uri.parse(message)}";
      } else {
        return "https://api.whatsapp.com/send?phone=$phone=${Uri.parse(message)}";
      }
    }

    if (await canLaunchUrlString(url())) {
      await launchUrlString(url());
    } else {
      throw 'Could not launch ${url()}';
    }
  }

  String _getYoutubeVideoIdByURL(String url) {
    url = url.replaceAll("https://www.youtube.com/watch?v=", "");
    url = url.replaceAll("https://m.youtube.com/watch?v=", "");
    url = url.replaceAll("//www.youtube.com/embed/", "");
    url = url.replaceAll('"', "");
    return url;
  }

  void getYouTubeUrl(String content) {
    if (content == null) {
      return;
    }
    RegExp regExp = RegExp(
        r'((?:https?:)?\/\/)?((?:www|m)\.)?((?:youtube\.com|youtu.be))(\/(?:[\w\-]+\?v=|embed\/|v\/)?)([\w\-]+)(\S+)?');
    String matches = regExp.stringMatch(content);
    if (matches == null) {
      return;
    }

    setState(() {
      youTubeUrl = matches;
      _youtubController = YoutubePlayerController(
        initialVideoId: _getYoutubeVideoIdByURL(matches),
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: true,
        ),
      );
    });
  }
*/
  @override
  void initState() {
    // just for test
 //   getYouTubeUrl('https://www.youtube.com/watch?v=isFkFWxu21c');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Questions & Answers'),
          centerTitle: true,
          shadowColor: Colors.transparent,
        ),
        backgroundColor: const Color(0xffF3F5F9),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ExpansionPanelList(
                  expansionCallback: (int index, bool isExpanded) {
                    setState(() {
                      _steps[index].isExpanded = !isExpanded;
                    });
                  },
                  children: _steps.map<ExpansionPanel>((Step step) {
                    return ExpansionPanel(
                      canTapOnHeader: true,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(step.title),
                        );
                      },
                      body: ListTile(
                        title: Column(
                          children: [
                          //  HtmlWidget(
                            //  ngNoEmpty(step.body, ''),
                            //),
                            SizedBox(
                              height: 15,
                            ),
                            //youTubeUrl != null
                              //  ? YoutubePlayer(
                                //    controller: _youtubController,
                                  //  showVideoProgressIndicator: true,
                                  //)
                                //:
                                 Container(),
                          ],
                        ),
                        //  Text(step.body),
                      ),
                      isExpanded: step.isExpanded,
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    color: Colors.white,
                    height: 50,
                    child: Center(
                      child: Text(
                        'Or Contact Us Directlly',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    )),
                buildContactUs(
                    context: context,
                    fontSize: 16,
                    padding: 2.5,
                    icon: Icon(
                      Icons.chat,
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Live chat',
                    ontap: () {
                   /*
                      launchWhatsApp(
                          phone: defaultWhatsappNumber,
                          message: defaultWhatsappText);
                   */
                    }),
                buildContactUs(
                    context: context,
                    fontSize: 16,
                    padding: 2.5,
                    icon:
                        Icon(Icons.mail, color: Theme.of(context).primaryColor),
                    title:'Email message',
                    ontap: () {
                      String encodeQueryParameters(Map<String, String> params) {
                        return params.entries
                            .map((MapEntry<String, String> e) =>
                                '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                            .join('&');
                      }

                      final Uri emailLaunchUri = Uri(
                        scheme: 'mailto',
                        path: defaultMailAddress,
                        query: encodeQueryParameters(<String, String>{
                          'subject': defaultMailsubject,
                        }),
                      );

  //                    launchUrl(emailLaunchUri);
                    }),
                buildContactUs(
                    context: context,
                    fontSize: 16,
                    padding: 2.5,
                    icon: Icon(Icons.phone,
                        color: Theme.of(context).primaryColor),
                    title: "Customer care",
                    ontap: () async {
                      final Uri launchUri = Uri(
                        scheme: 'tel',
                        path: defaultPhoneNumber,
                      );
//                      await launchUrl(launchUri);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding buildContactUs(
      {required BuildContext context,
       double? padding,
      String? title,
      Icon? icon,
      double ?fontSize,
      VoidCallback ?ontap,
      TextAlign ?textAlign}) {
    return Padding(
      padding: EdgeInsets.only(top: padding??10, bottom: padding??10),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(15),
          color: Colors.white,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: icon,
              ),
              Text(
                title??"",
                textAlign: textAlign,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Step {
  Step(this.title, this.body, [this.isExpanded = false]);
  String title;
  String body;
  bool isExpanded;
}

List<Step> getSteps() {
  return [
    Step('Iorem iqsum doller sit ?',
        '<h3>Heading</h3> <p> A paragraph with <strong>strong</strong>,<em>emphasized</em> and <span style="color: red">colored</span> text.</p><!-- anything goes here -->'),
    Step('Iorem iqsum doller sit ?',
        'When you tap in the body it will open the web page and display video if it contain one.'),
    Step('Iorem iqsum doller sit ?',
        'Change your terminal directory to the project directory, enter `flutter run`.'),
    Step('Iorem iqsum doller sit ?',
        'Change your terminal directory to the project directory, enter `flutter run`.'),
    Step('Iorem iqsum doller sit ?',
        'Change your terminal directory to the project directory, enter `flutter run`.'),
    Step('Iorem iqsum doller sit ?',
        'Change your terminal directory to the project directory, enter `flutter run`.'),
    Step('Iorem iqsum doller sit ?',
        'Change your terminal directory to the project directory, enter `flutter run`.'),
  ];
}
