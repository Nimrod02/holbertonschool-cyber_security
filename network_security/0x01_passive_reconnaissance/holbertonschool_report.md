# Report on Holbertonschool.com Domain

## Overview

This report provides an analysis of the `holbertonschool.com` domain based on data collected from Shodan as of March 2024. It highlights the IP addresses, SSL certificate details, server technologies, and response headers for services running under this domain.

## IP Addresses and Locations

Two main IP addresses were identified, both hosted by Amazon Data Services in France, specifically in Paris:

- `35.180.27.154`
- `52.47.143.83`

## SSL Certificates and Security Protocols

For the IP `52.47.143.83`, associated with the subdomain `yriry2.holbertonschool.com`, an SSL certificate was identified:

- **Issuer**: Let's Encrypt
- **Common Name**: R3
- **Supported SSL Versions**: TLSv1.2, TLSv1.3

## Detected Services and Technologies

### IP Address: `35.180.27.154`

- **Service Response**: 301 Moved Permanently
- **Server Technology**: nginx/1.18.0 (Ubuntu), discourse, ruby, ruby on rails
- **Notable Headers**:
  - `Content-Type`: text/html
  - `Location`: http://holbertonschool.com

### IP Address: `52.47.143.83`

- **Service Response**: HTTP/1.1 200 OK for `yriry2.holbertonschool.com`
- **Server Technology**: nginx
- **SSL Certificate**: Yes, details provided above
- **Notable Headers**:
  - `Content-Type`: text/html; charset=utf-8
  - `X-Frame-Options`: SAMEORIGIN
  - `X-XSS-Protection`: 0
  - `X-Content-Type-Options`: nosniff

## Conclusion

The `holbertonschool.com` domain is primarily hosted on Amazon Data Services in France, utilizing nginx as the web server technology. Security is enforced through SSL certificates, with support for TLSv1.2 and TLSv1.3, indicating a strong commitment to secure communication. The presence of security headers like `X-Frame-Options` and `X-Content-Type-Options` further demonstrates a focus on preventing common web vulnerabilities.

## Disclaimer

This report is generated based on data retrieved from Shodan as of March 2024. It is intended for informational purposes only and reflects the data available at the time of the report.
