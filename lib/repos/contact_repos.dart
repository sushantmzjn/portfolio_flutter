import 'package:http/http.dart' as http;
import 'package:myPortfolio/model/contactmodel.dart';

class ContactsRepository {
  Future<List<Contact>> getContacts() async {
    final response = await http.get("http://192.168.9.102:8080/contact");
    return contactFromJson(response.body);
  }
}
