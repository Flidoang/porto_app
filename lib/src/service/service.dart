import 'package:url_launcher/url_launcher.dart';

class UrlService {
  final Uri urlGit = Uri.parse('https://github.com/Flidoang');
  final Uri urllinkedIn =
      Uri.parse('https://www.linkedin.com/in/raflihendarsyah');
  final Uri urlInstagram = Uri.parse('https://www.instagram.com/fli_rafli22');

  Future<void> fetchGit() async {
    if (await launchUrl(urlGit, mode: LaunchMode.externalApplication)) {
      print('URL launched successfully.');
    } else {
      throw 'Error $urlGit';
    }
  }

  Future<void> fetchLinkedIn() async {
    if (await launchUrl(urllinkedIn, mode: LaunchMode.externalApplication)) {
      print('URL launched successfully.');
    } else {
      throw 'Error $urllinkedIn';
    }
  }

  Future<void> fethInstagram() async {
    if (await launchUrl(urlInstagram, mode: LaunchMode.externalApplication)) {
      print('URL launched successfully.');
    } else {
      throw 'Error $urlInstagram';
    }
  }
}
