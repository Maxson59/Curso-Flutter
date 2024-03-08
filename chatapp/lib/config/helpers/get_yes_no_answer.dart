


import 'package:chatapp/domain/entities/message.dart';
import 'package:chatapp/infrastructure/yes_no_model.dart';
import 'package:dio/dio.dart';

class GetYesNoAnswer {

  final Dio _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');
    final yesNoModel = YesNoModel.fromJsonMap(response.data);
    return yesNoModel.toMessageEntity();
  }
}