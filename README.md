
<p align="center">
  <img src="https://app.expeditedaddons.com/urlxray.png"/>
  
</p>

<h1 align='center'>URL X-Ray</h1>

## Pull website status and domain information for any URL.

## Requirements

- An API Key from Heroku
    - Add from: https://elements.heroku.com/addons/urlxray

- Ruby v2.x or greater

## Usage

### Input Parameter Descriptions

| Index       | Name    | Example | Description |
| --------------- | ------- | -------- |--------|
|0|`url`|string|The URL to process|
|1|`fetch_content`|boolean|If this URL responds with html, text, json or xml then return the response. This option is useful if you want to perform further processing on the URL content.|



### Making a Request

```ruby
require 'urlx_ray'

# Note: the 'Controller' here is not a reference to Rails controllers
# but an internal structure, won't interfere with your Rails app and will 
# work fine in a standalone ruby app or another framework

$ > uxr = UrlxRay::APIController.new
 => #<UrlxRay::APIController:0x007fbb82a3c6c8> 

$ > result = uxr.lookup("https://www.expeditedssl.com",false)

```
### Using Results

```ruby
$ > result.server_name
 => "nginx/1.4.1" 

$ > result.http_ok
 => true 

$ > result.server_country_code
 => "US" 

$ > result.server_city
 => "Ashburn" 

$ > result.query
 => {} 

$ > result.content_encoding
 => "" 

$ > result.server_country
 => "United States" 

$ > result.real
 => true 

$ > result.http_redirect
 => false 

$ > result.url
 => "https://www.expeditedssl.com" 

$ > result.server_hostname
 => "ec2-50-16-223-0.compute-1.amazonaws.com" 

$ > result.valid
 => true 

$ > result.server_region
 => "Virginia" 

$ > result.content_size
 => 23848 

$ > result.http_status_message
 => "OK" 

$ > result.content_type
 => "text/html; charset=utf-8" 

$ > result.load_time
 => 0.082296341

$ > result.server_ip
 => "50.16.223.0" 

$ > result.http_status
 => 200 

$ > result.url_protocol
 => "https" 

$ >  result.url_port
 => 443 

$ > result.url_path
 => "" 

```


## Installation

```
# In your Gemfile
gem 'urlx_ray', git: 'https://github.com/mbuckbee/Url-X-Ray-Gem.git'
```    


## Result Attribute Descriptions

| Attribute       | Type    | Description |
| --------------- | ------- | -------- |
|`valid`|boolean|Is this a valid well-formed URL|
|`real`|boolean|Is this URL actually serving real content|
|`http_ok`|boolean|True if this URL responded with an HTTP OK (200) status|
|`http_status`|integer|The HTTP status code this URL responded with|
|`http_status_message`|integer|The HTTP status message assoicated with the status code|
|`http_redirect`|boolean|True if this URL responded with a HTTP redirect|
|`url`|string|The fully qualified URL. This may be different to the URL requested if http-redirect is True|
|`url_protocol`|string|The URL protocol (usually http or https)|
|`url_port`|integer|The URL port|
|`url_path`|string|The URL path|
|`query`|map|A key:value map of the URL query paramaters|
|`content`|string|The actual content this URL responded with. This is only set if the 'fetch-content' parameter was set|
|`content_size`|integer|The size of the URL content in bytes|
|`content_type`|string|The content-type the URL points to|
|`content_encoding`|string|The encoding type the URL uses|
|`load_time`|float|The time taken to load the URL content (in seconds)|
|`server_ip`|string|The IP address of the server hosting this URL|
|`server_name`|string|The name of the server software hosting this URL|
|`server_country`|string|Server IP geo-location: full country name|
|`server_country_code`|string|Server IP geo-location: ISO 2-letter country code|
|`server_city`|string|Server IP geo-location: full city name (if detectable)|
|`server_region`|string|Server IP geo-location: full region name (if detectable)|
|`server_hostname`|string|The server hostname (PTR)|



## Live Interactive Testing

Doublecheck results, use a Live Proxy and check your API Key with the interactive documentation at:

http://docs.urlxrayexp.apiary.io/

You will need your `URLXRAY_API_KEY` from the setup screen where you've provisioned the URL X-Ray add-on.

## Troubleshooting

As a sanity check it is sometimes useful to bypass your app stack and check the endpoint, your API Key and parameters directly.

*Test with your browser*

```
# Modify the following to use your actual API Key
'https://urlxray.expeditedaddons.com/?api_key=REPLACE_WITH_YOUR_URLXRAY_API_KEY&fetch_content=false&url=http%3A%2F%2Fwww.wikipedia.org'
```

A successful call will return your requested data with a HTTP result code of `200` and be in `JSON` format. We recommend the [JSON Formatter](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa?hl=en) extension as a useful tool. 

## In Development

The URL X-Ray gem relies upon the environment variable `ENV['URLXRAY_API_KEY']` being present and correctly configured to authenticate to the service. You will need to have this variable present in your local environment for the gem to work correctly.

If you're using Heroku, please read their [Guide to Heroku Local](https://devcenter.heroku.com/articles/heroku-local) which has instructions on easily copying your config values to your development environment.

**DOTENV**

[https://github.com/bkeepers/dotenv](https://github.com/bkeepers/dotenv)

If you're trying to use IP to Earth in your local development or test environment with the [dotenv](https://github.com/bkeepers/dotenv) gem be sure that you are loading the `dotenv-rails` gem with the `rails-now` requirement. 

```ruby
# Example Gemfile excerpt

gem 'dotenv-rails', :require => 'dotenv/rails-now'
gem 'iptoearth'
```

**FOREMAN**

[https://github.com/ddollar/foreman](https://github.com/ddollar/foreman)

If you're having issues with configuring `dotenv`, you might want to try [foreman](https://github.com/ddollar/foreman) which will also autoload `.env` files in your local environment.


**Test in the Rails console**

Launch `rails c` in your development project directory and at the prompt enter `ENV[URLXRAY_API_KEY]` which, if you've configured your development environment correctly should display your API Key.

## Issues and Security Concerns

Please email [support@expeditedaddons.com](mailto:support@expeditedaddons.com)

## License

The URL X-Ray gem is licensed under the MIT license.

## Additional Add-ons

<table>
  <tr>
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/qrackajack_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/qrackajack'>QRACKAJACK</a></h5>
      <p>Generate QR codes for use anywhere.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/weightsandmeasures_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/weightsandmeasures'>WEIGHTS & MEASURES</a></h5>
      <p>Conversational interface to convert between units of measure.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/scrapetastic_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/scrapetastic'>SCRAPETASTIC</a></h5>
      <p>Pull structured data from any website.</p>
    </td>

  </tr>
  
  <tr>
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/useragentidentifier_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/useragentidentifier'>USER AGENT IDENTIFIER</a></h5>
      <p>Boost User Agent identification with our always up to date UA parsing.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/ipinvestigator_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/ipinvestigator'>IP INVESTIGATOR</a></h5>
      <p>Check if an IP address is hosting Proxies, Bots or Malware.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/resizer_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/scrapetastic'>RESIZER</a></h5>
      <p>Resize images for Retina use, thumbnails and social promotion.</p>
    </td>

  </tr>  
  
  
  <tr>
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/urlxray_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/urlxray'>URL X-RAY</a></h5>
      <p>Pull website status and domain information for any URL.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/webtopdf_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/webtopdf'>WEB TO PDF</a></h5>
      <p>Generate PDF Documents from Webpages.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/watermarker_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/watermarker'>WATERMARKER</a></h5>
      <p>Identify and protect images by adding a watermark to them.</p>
    </td>

  </tr>    
  
  
  <tr>
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/iptoearth_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/iptoearth'>IP TO EARTH</a></h5>
      <p>Find the Country and City of origin for an IP Address.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/geocody_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/geocody'>GEOCODY</a></h5>
      <p>Convert mailing addresses into Lat,Long Coordinates.</p>
    </td>
    
    <td align='center' width='33%' cellpadding='10'>
       <img src="https://app.expeditedaddons.com/realemail_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/realemail'>REAL EMAIL</a></h5>
      <p>Reduce bounced emails and errors by validating emails against MX records.</p>
    </td>

  </tr>    

</table>





