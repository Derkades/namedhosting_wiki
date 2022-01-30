# Migrate from webhost

Do NOT use the NamelessMC installer. If you did, press the 'Reset' button in Named Hosting.

1. Export your MySQL database, e.g. using phpmyadmin
2. Download files from your old webhost
3. Upload files to Named Hosting
4. Import database into Named Hosting phpmyadmin
5. Edit `core/config.php` and update the database credentials to the database credentials in Named Hosting dashboard.
