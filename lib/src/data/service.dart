import 'package:url_launcher/url_launcher.dart';

class urlService {
  final Uri urlGit = Uri.parse('https://github.com/Flidoang');
  final Uri urllinkedIn =
      Uri.parse('https://www.linkedin.com/in/raflihendarsyah');
  final Uri urlInstagram = Uri.parse('https://www.instagram.com/fli_rafli22');

  // linkedIn
  // final Uri urlGit = Uri.parse('https://www.linkedin.com/in/raflihendarsyah/');

  Future<void> fetchGit() async {
    if (!await canLaunchUrl(urlGit)) {
      print('Launching URL...');
      !await launchUrl(urlGit, mode: LaunchMode.externalApplication);
      print('URL launched successfully.');
    } else {
      print('Could not launch $urlGit');
    }
  }

  Future<void> fetchLinkedIn() async {
    if (!await canLaunchUrl(urllinkedIn)) {
      print('Launching URL...');
      !await launchUrl(urllinkedIn, mode: LaunchMode.externalApplication);
      print('URL launched successfully.');
    } else {
      print('Could not launch $urllinkedIn');
    }
  }

  Future<void> fethInstagram() async {
    if (!await canLaunchUrl(urlInstagram)) {
      print('Launching URL...');
      !await launchUrl(urlInstagram, mode: LaunchMode.externalApplication);
      print('URL launched successfully.');
    } else {
      print('Could not launch $urlInstagram');
    }
  }
}
