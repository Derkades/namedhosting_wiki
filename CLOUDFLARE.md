There are two supported ways you can use Named Hosting with CloudFlare:

### Proxy disabled (strongly recommended)
See [this](https://www.unixsheikh.com/articles/stay-away-from-cloudflare.html) for more info. Summarized, with proxy enabled:
* CloudFlare owns the private keys to your SSL certificate, which means they will be able to inspect and modify your website traffic (see passwords, change text on your site)*
* CloudFlare may annoy some visitors with captchas or block them completely.
* CloudFlare is able to analyze requests and properties of the visitor's device, giving them a large amount of useful data.*

Disable proxy in cloudflare and enable HTTPS in your Named Hosting dashboard.

### Proxy enabled
Enable proxy in CloudFlare (set to flexible SSL) and disable HTTPS in your Named Hosting Dashboard.



<br><br><br><br><br><br>
\* CloudFlare is not known to abuse this power at the moment, but history shows over and over again that most businesses eventually will.
