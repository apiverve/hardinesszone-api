/// Response models for the USDA Hardiness Zone API.

/// API Response wrapper.
class HardinesszoneResponse {
  final String status;
  final dynamic error;
  final HardinesszoneData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  HardinesszoneResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory HardinesszoneResponse.fromJson(Map<String, dynamic> json) => HardinesszoneResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? HardinesszoneData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
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
