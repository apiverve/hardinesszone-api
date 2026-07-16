# USDA Hardiness Zone API - PHP Package

Hardiness Zone is a simple tool for getting the USDA Plant Hardiness Zone for a given zip code

## Installation

Install via Composer:

```bash
composer require apiverve/hardinesszone
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Hardinesszone\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['zip' => '97201']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Hardinesszone\Client;
use APIVerve\Hardinesszone\Exceptions\APIException;
use APIVerve\Hardinesszone\Exceptions\ValidationException;

try {
    $response = $client->execute(['zip' => '97201']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/hardinesszone?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://hardinesszone.apiverve.com?utm_source=php&utm_medium=readme](https://hardinesszone.apiverve.com?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
