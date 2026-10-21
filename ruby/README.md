# USDA Hardiness Zone API - Ruby Gem

USDA Hardiness Zone looks up the plant hardiness zone by ZIP code, mapping any US ZIP code to its zone title and temperature range. Paid plans add the zone classification code, Celsius values, and plant survival recommendations.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_hardinesszone'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_hardinesszone
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_hardinesszone'

# Initialize the client
client = APIVerve::Hardinesszone::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ zip: "97201" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ zip: "97201" })
  puts response["data"]
rescue APIVerve::Hardinesszone::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Hardinesszone::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Hardinesszone::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/hardinesszone?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/hardinesszone?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/hardinesszone?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
