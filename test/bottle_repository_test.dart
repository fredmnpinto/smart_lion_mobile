import 'package:flutter_test/flutter_test.dart';
import 'package:smart_lion_mobile/app/data/models/bottle.dart';
import 'package:smart_lion_mobile/app/data/providers/bottle.dart';
import 'package:smart_lion_mobile/app/data/repository/bottle.dart';
import 'package:http/http.dart' as http;
void main() {
  test("Test POST bottle", () async {
    BottleRepository repository = BottleRepository(apiBottle: BottleProvider(httpClient: http.Client()));
    
    const String firebase_uid = "adasdsa";
    const String qr_code = "dasadssad";

    BottleModel bottle = BottleModel(id: 3, firebaseUid: firebase_uid, qrCode: qr_code);

    // Tenta criar uma bottle
    int? id = await repository.add(bottle);

    BottleModel bottleRcvd = await repository.getFromId(id!);

    expect(bottleRcvd.id, id);
    expect(bottleRcvd.firebaseUid, firebase_uid);
    expect(bottleRcvd.qrCode, qr_code);

    repository.delete(id);
  });
}