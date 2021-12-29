# Force https and www

Do not enable "force https" or "force www" in NamelessMC, it will break your site. Instead, configure it in the Named Hosting dashboard.


If you accidentally enabled it, follow the steps bellow 

### v2-pre10+
Set `force-https` and/or `force-www` to `false` in `core/config.php`

### Other versions
Delete the `cache/033f3da34ae9ec9661072ab0897ddf7ed642de3f.cache` and `cache/a48fdb02e34b9602632d13dd91f0536d3b9bb559.cache` files.
