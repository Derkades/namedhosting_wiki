### Step 1: Creating records
Create the following records

| Type    | Name                 | Target                  | Proxy    |
| ------- | -------------------- | ----------------------- | -------- |
| `CNAME` | `@` (yourdomain.com) | `site.namedhosting.com` | Disabled |
| `CNAME` | `www`                | `site.namedhosting.com` | Disabled |

Disabling cloudflare proxy is very important, even if you want to use it later!

### Step 2: Wait for your site to work
Usually it takes only 5 minutes. Note that you have to use `http://`, not `https://`. As soon as you see the NamelessMC installer at your domain, continue to the next step (do not go through the installer yet).

If you are impatient you can try clearing your browser cache and operating system DNS cache.

### Step 3: Enable HTTPS
Go to your site on the Named Hosting dashboard, click 'Edit', then enable HTTPS. Wait about a minute, then refresh your site. It should now redirect to `https://` automatically. If not, wait 30 minutes and try again. If it still doesn't work, contact support.

### Step 4: Enable proxy (optional)
Leaving proxy disabled will likely result in better security. With proxy enabled, performance may get better or may get worse. It is useful if you suspect denial of service attacks on your site, but otherwise we recommend leaving it disabled.

If you do enable proxy, make sure to set security level to "Full" or your site will break.

### Step 5: Allow pinging from Named Hosting (required if proxy is enabled)
In CloudFlare, go to the `Rules` page and click `Create Page Rule`. Enter the following settings:
![image](https://user-images.githubusercontent.com/15892014/125193258-d04c0680-e24b-11eb-9bd4-46709b71b4f4.png)

In place of `yourdomain.com` use your actual primary domain. Note that you may need to add `www.`: if `yourdomain.com` redirects to `www.yourdomain.com`, enter `www.yourdomain.com`. If `www.yourdomain.com` doesn't work or redirects to `yourdomain.com`, use `yourdomain.com`.

### Additional notes
Don't enable "Under attack mode" for a long time (multiple weeks) and don't block requests by country. This might prevent named hosting from seeing your website is working, and it'll display a warning banner. Websites that are not detected to be working will be deleted.
