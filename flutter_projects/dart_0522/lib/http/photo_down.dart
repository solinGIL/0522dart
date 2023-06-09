import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

Future<Uint8List> downloadImage(String url) async {
  // 메인에서 html인자를 받아와서 파싱함
  final response = await http.get(Uri.parse(url));
  // 파싱한 데이터를 8비트 정수로 반환함
  return response.bodyBytes;
}

// 비트와 파일네임을 인자로 받아옴
Future<File> saveFile(Uint8List bytes, String filename) async {
  File file = File(filename);
  // 받아온 데이터를 writeAsBytes가 저장해줌
  return file.writeAsBytes(bytes);
}

void main() async {
  final imageUrl = 'https://alimipro.com/favicon.ico';
  final filename = 'icon.ico';

  // downloadImage로 url을 인자로 보냄.
  final start = DateTime.now();
  print('다운로드 시작');
  print('다운로드 끝');
  Uint8List bytes = await downloadImage(imageUrl);
  // 파일에 대한 8비트 값과 파일 이름을 보냄
  await saveFile(bytes, filename);
  // DataTime.now()를 사용해서 현재 시간을 얻고, 작업 시작 전후의 시간차를 이용해 작업에 소요된 시간 계산
  final end = DateTime.now();
  final duration = end.difference(start);
  print('========');
  print('소요시간 : ${duration.inMilliseconds} milliseconds');
  // bytes.lengthInbytes/1024를 통해 파일 크기를 KB단위로 계산함
  print('용량: ${bytes.lengthInBytes / 1024} KB');


  // 미완성
  final img1 = 'icon1.ico';
  final img2 = 'icon2.ico';
  final img3 = 'icon3.ico';



}
