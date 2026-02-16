/// Response models for the USDA Hardiness Zone API.

/// API Response wrapper.
class HardinesszoneResponse {
  final String status;
  final dynamic error;
  final HardinesszoneData? data;

  HardinesszoneResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory HardinesszoneResponse.fromJson(Map<String, dynamic> json) => HardinesszoneResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? HardinesszoneData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the USDA Hardiness Zone API.

class HardinesszoneData {
  String? zipCode;
  String? zone;
  String? tempRange;
  String? zoneTitle;
  HardinesszoneDataDetails? details;

  HardinesszoneData({
    this.zipCode,
    this.zone,
    this.tempRange,
    this.zoneTitle,
    this.details,
  });

  factory HardinesszoneData.fromJson(Map<String, dynamic> json) => HardinesszoneData(
      zipCode: json['zipCode'],
      zone: json['zone'],
      tempRange: json['tempRange'],
      zoneTitle: json['zoneTitle'],
      details: json['details'] != null ? HardinesszoneDataDetails.fromJson(json['details']) : null,
    );
}

class HardinesszoneDataDetails {
  String? tempRange;
  String? description;
  String? plantSurvival;

  HardinesszoneDataDetails({
    this.tempRange,
    this.description,
    this.plantSurvival,
  });

  factory HardinesszoneDataDetails.fromJson(Map<String, dynamic> json) => HardinesszoneDataDetails(
      tempRange: json['tempRange'],
      description: json['description'],
      plantSurvival: json['plantSurvival'],
    );
}

class HardinesszoneRequest {
  String zip;

  HardinesszoneRequest({
    required this.zip,
  });

  Map<String, dynamic> toJson() => {
      'zip': zip,
    };
}
