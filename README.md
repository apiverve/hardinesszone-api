# [USDA Hardiness Zone API](https://apiverve.com/marketplace/hardinesszone?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)

USDA Hardiness Zone looks up the plant hardiness zone by ZIP code, mapping any US ZIP code to its zone title and temperature range. Paid plans add the zone classification code, Celsius values, and plant survival recommendations.

The USDA Hardiness Zone API provides a simple, reliable way to integrate usda hardiness zone functionality into your applications. Built for developers who need production-ready usda hardiness zone capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/hardinesszone?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/hardinesszone?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/hardinesszone)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.USDAHardinessZone)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-hardinesszone/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_hardinesszone)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/hardinesszone)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_hardinesszone)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callUSDAHardinessZoneAPI() {
    try {
        const params = new URLSearchParams({
            zip: '97201'
        });

        const response = await fetch(`https://api.apiverve.com/v1/hardinesszone?${params}`, {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callUSDAHardinessZoneAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/hardinesszone?zip=97201" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/hardinesszone
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/hardinesszone) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.USDAHardinessZone
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.USDAHardinessZone) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-hardinesszone
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-hardinesszone/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_hardinesszone
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_hardinesszone) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/hardinesszone
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/hardinesszone) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_hardinesszone
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_hardinesszone) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:hardinesszone-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/hardinesszone-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [USDA Hardiness Zone API](https://apiverve.com/marketplace/hardinesszone?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/hardinesszone](https://docs.apiverve.com/ref/hardinesszone)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The USDA Hardiness Zone API is commonly used for:

- **Web Applications** - Add usda hardiness zone features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with usda hardiness zone capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the USDA Hardiness Zone API:

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

---

## Support & Community

- 🏠 **API Home**: [USDA Hardiness Zone API](https://apiverve.com/marketplace/hardinesszone?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
