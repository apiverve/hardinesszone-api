# USDA Hardiness Zone API - Dart/Flutter Client

Hardiness Zone is a simple tool for getting the USDA Plant Hardiness Zone for a given zip code

[![pub package](https://img.shields.io/pub/v/apiverve_hardinesszone.svg)](https://pub.dev/packages/apiverve_hardinesszone)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [USDA Hardiness Zone API](https://hardinesszone.apiverve.com?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_hardinesszone: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_hardinesszone/apiverve_hardinesszone.dart';

void main() async {
  final client = HardinesszoneClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'zip': '97201'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "zipCode": "97201",
    "zone": "8b",
    "tempRange": "15 to 20",
    "zoneTitle": "8b: 15 to 20",
    "details": {
      "tempRange": "15°F to 20°F (-9°C to -7°C)",
      "description": "Mild and relatively warm, found in parts of southern U.S. like the Gulf Coast and parts of Texas.",
      "plantSurvival": "A wide range of plants, including many Mediterranean and subtropical varieties."
    }
  }
}
```

## API Reference

- **API Home:** [USDA Hardiness Zone API](https://hardinesszone.apiverve.com?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/hardinesszone](https://docs.apiverve.com/ref/hardinesszone?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
