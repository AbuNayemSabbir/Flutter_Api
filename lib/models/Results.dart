/// ANIMAL_STATION_ID : 5
/// ANIMAL_STATION_NAME : "Bogura"
/// ANIMAL_TYPE_ID : 1
/// ANIMAL_TYPE_NAME : "Cow"
/// ANIMAL_ID : 70
/// ANIMAL_NAME : "Biddut"
/// AMOUNT : 50000
/// PURPOSE_OF_CULLING : "Amnei"
/// CULLING_DATE : 1659376800
/// EAR_TAG_NO : "22-21-06-22"
/// ID : 20
/// IS_ACTIVE : false
/// STATUS_ID : 0
/// REMARKS : null

class Results {
  Results({
      int? animalstationid, 
      String? animalstationname, 
      int? animaltypeid, 
      String? animaltypename, 
      int? animalid, 
      String? animalname, 
      int? amount, 
      String? purposeofculling, 
      int? cullingdate, 
      String? eartagno, 
      int? id, 
      bool? isactive, 
      int? statusid, 
      dynamic remarks,}){
    _animalstationid = animalstationid;
    _animalstationname = animalstationname;
    _animaltypeid = animaltypeid;
    _animaltypename = animaltypename;
    _animalid = animalid;
    _animalname = animalname;
    _amount = amount;
    _purposeofculling = purposeofculling;
    _cullingdate = cullingdate;
    _eartagno = eartagno;
    _id = id;
    _isactive = isactive;
    _statusid = statusid;
    _remarks = remarks;
}

  Results.fromJson(dynamic json) {
    _animalstationid = json['ANIMAL_STATION_ID'];
    _animalstationname = json['ANIMAL_STATION_NAME'];
    _animaltypeid = json['ANIMAL_TYPE_ID'];
    _animaltypename = json['ANIMAL_TYPE_NAME'];
    _animalid = json['ANIMAL_ID'];
    _animalname = json['ANIMAL_NAME'];
    _amount = json['AMOUNT'];
    _purposeofculling = json['PURPOSE_OF_CULLING'];
    _cullingdate = json['CULLING_DATE'];
    _eartagno = json['EAR_TAG_NO'];
    _id = json['ID'];
    _isactive = json['IS_ACTIVE'];
    _statusid = json['STATUS_ID'];
    _remarks = json['REMARKS'];
  }
  int? _animalstationid;
  String? _animalstationname;
  int? _animaltypeid;
  String? _animaltypename;
  int? _animalid;
  String? _animalname;
  int? _amount;
  String? _purposeofculling;
  int? _cullingdate;
  String? _eartagno;
  int? _id;
  bool? _isactive;
  int? _statusid;
  dynamic _remarks;
Results copyWith({  int? animalstationid,
  String? animalstationname,
  int? animaltypeid,
  String? animaltypename,
  int? animalid,
  String? animalname,
  int? amount,
  String? purposeofculling,
  int? cullingdate,
  String? eartagno,
  int? id,
  bool? isactive,
  int? statusid,
  dynamic remarks,
}) => Results(  animalstationid: animalstationid ?? _animalstationid,
  animalstationname: animalstationname ?? _animalstationname,
  animaltypeid: animaltypeid ?? _animaltypeid,
  animaltypename: animaltypename ?? _animaltypename,
  animalid: animalid ?? _animalid,
  animalname: animalname ?? _animalname,
  amount: amount ?? _amount,
  purposeofculling: purposeofculling ?? _purposeofculling,
  cullingdate: cullingdate ?? _cullingdate,
  eartagno: eartagno ?? _eartagno,
  id: id ?? _id,
  isactive: isactive ?? _isactive,
  statusid: statusid ?? _statusid,
  remarks: remarks ?? _remarks,
);
  int? get animalstationid => _animalstationid;
  String? get animalstationname => _animalstationname;
  int? get animaltypeid => _animaltypeid;
  String? get animaltypename => _animaltypename;
  int? get animalid => _animalid;
  String? get animalname => _animalname;
  int? get amount => _amount;
  String? get purposeofculling => _purposeofculling;
  int? get cullingdate => _cullingdate;
  String? get eartagno => _eartagno;
  int? get id => _id;
  bool? get isactive => _isactive;
  int? get statusid => _statusid;
  dynamic get remarks => _remarks;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ANIMAL_STATION_ID'] = _animalstationid;
    map['ANIMAL_STATION_NAME'] = _animalstationname;
    map['ANIMAL_TYPE_ID'] = _animaltypeid;
    map['ANIMAL_TYPE_NAME'] = _animaltypename;
    map['ANIMAL_ID'] = _animalid;
    map['ANIMAL_NAME'] = _animalname;
    map['AMOUNT'] = _amount;
    map['PURPOSE_OF_CULLING'] = _purposeofculling;
    map['CULLING_DATE'] = _cullingdate;
    map['EAR_TAG_NO'] = _eartagno;
    map['ID'] = _id;
    map['IS_ACTIVE'] = _isactive;
    map['STATUS_ID'] = _statusid;
    map['REMARKS'] = _remarks;
    return map;
  }

}