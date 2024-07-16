import 'package:equatable/equatable.dart';

class CalenderEventModel extends Equatable {
  final String desc;
  final String foto;
  final String nama;
  final String jabatan;
  final String status;
  final String startTime;
  final String endTime;
  final String location;

  const CalenderEventModel({
    required this.desc,
    required this.foto,
    required this.nama,
    required this.jabatan,
    required this.status,
    required this.startTime,
    required this.endTime,
    required this.location,
  });

  factory CalenderEventModel.fromJson(Map<String, dynamic> json) {
    return CalenderEventModel(
      desc: json['desc'],
      nama: json['nama'],
      jabatan: json['jabatan'],
      foto: json['foto'],
      status: json['status'],
      startTime: json['starttime'],
      endTime: json['endtime'],
      location: json['location'],
    );
  }

  @override
  List<Object?> get props => [
        nama,
        foto,
        jabatan,
        status,
        startTime,
        endTime,
        desc,
        location,
      ];
}
