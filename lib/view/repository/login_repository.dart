import 'package:getx_mvvm/data/network/network_api_services.dart';
import 'package:getx_mvvm/resources/app-url/app_url.dart';

class LoginRepository {
  final _apiServices = NetworkApiServices();

  Future<dynamic> loginApi(var data) async {
    dynamic response = _apiServices.postApi(data, AppURl.loginAPi);
    return response;
  }
}
