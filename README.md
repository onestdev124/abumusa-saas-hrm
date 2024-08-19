# ONEST HRM

## TABLE OF CONTENTS
- [Server Setup](taqanah/dev/SERVER.md)
- [For sub Domain](taqanah/dev/cloudflare.conf.md)

# For Live Tracking

For Live Tracking you have to update according files

CollectionName


- modified: `firebase-credentials.js`, update json file

```json
{
  "type": "service_account",
  "project_id": "test-hrm",
  "private_key_id": "0e7fb1769fec8bf5865fdddb3da71ccca081b175",
  "private_key": "-----BEGIN PRIVATE KEY-",
  "client_email": "firebase-adminsdk-c02ec@test-hrm.iam.gserviceaccount.com",
  "client_id": "116886487746417807689",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-c02ec%40test-hrm.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}
```

       const config = {
            apiKey: "{{ env('FIRE_BASE_API_KEY') }}",
            authDomain: "{{ env('FIRE_BASE_AUTH_DOMAIN') }}",
            projectId: "{{ env('FIRE_BASE_PROJECT_ID') }}",
            storageBucket: "{{ env('FIRE_BASE_STORAGE_BUCKET') }}",
            messagingSenderId: "{{ env('FIRE_BASE_SENDER_ID') }}",
            appId: "{{ env('FIRE_BASE_APP_ID') }}",
            measurementId: "{{ env('FIRE_BASE_MEASUREMENT_ID') }}"
        };

- modified: `resources/views/test/glist.blade.php`
- modified: `resources/views/backend/report/live_tracking/index.blade.php`
- modified: `resources/views/backend/firebase/index.blade.php`, update script

```js
const config = {
  apiKey: "AIzaSyA3CI6C43JkiZWNYMsQ4VAiSD4Y6cJ5YiQ",
  authDomain: "test-hrm.firebaseapp.com",
  projectId: "test-hrm",
  storageBucket: "test-hrm.appspot.com",
  messagingSenderId: "586804708861",
  appId: "1:586804708861:web:368511bca7f3fca8f1c594",
  measurementId: "G-7CMBDQ28RL",
};
```

# Regular HRM configuration

run

```bash
php artisan module:disable Saas
php artisan migrate:fresh --seed --path=database/migrations/tenant
php artisan migrate

php8 artisan module:disable Saas
php8 artisan migrate:fresh --seed --path=database/migrations/tenant
php8 artisan migrate
```

# Saas HRM configuration


1. go to terminal and run the command below

```bash
sudo cp env.saas.hrm .env
```

if you have no terminal, copy `en.saas.hrm` and paste OR rename as `.env`

3. update the database credentials like

```bash
DB_HOST=localhost
DB_PORT=3306
DB_DATABASE="hrm"
DB_USERNAME="root"
DB_PASSWORD="password"
```
4. Composer update 
```bash
sudo chmod -R 777 bootstrap
sudo chmod -R 777 public
sudo chmod -R 777 storage
sudo chmod -R 777 vendor
sudo composer update
```
if you have no php-grpc extension 
```bash
sudo composer update --ign
```
2. Go to the terminal and run the command below

```bash
php artisan module:enable Saas
```

if you have no terminal, open `modules_statuses.json` and update `   "Saas": false,` to `   "Saas": true,`. if you see already done, just skip this step

3. Go to the terminal and run the command below

```bash
php artisan migrate:fresh --seed
```

if you have no terminal, open `database/sqls` folder, go to the `phpmyadmin` or select the database and import `saas.sql`





Cron Job
* * * * * php /var/www/projects/hrm/artisan schedule:run >> /dev/null 2>&1


# Demo SMTP Credentials
```bash
MAIL_MAILER="smtp"
MAIL_HOST="smtp.gmail.com"
MAIL_PORT="587"
MAIL_USERNAME="onestdev103@gmail.com"
MAIL_PASSWORD="nulmwgxhmzcbojgk"
MAIL_FROM_ADDRESS="onestdev103@gmail.com"
MAIL_ENCRYPTION="ssl"
MAIL_FROM_NAME="OnestDev103"
```


## Step 6: Update Laravel Environment
Update your Laravel application's .env file with the database information:
```bash
cd /var/www/html/your-project-name
cp .env.example .env
nano .env
```

Update the following lines:
```bash
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=your_database_name
DB_USERNAME=your_database_user
DB_PASSWORD=your_password
```

## Step 7: Generate Laravel Key
Generate the application key:
```bash
php artisan key:generate
```

## Step 8: Run Migrations
Run the migrations to create the necessary database tables:
```bash
php artisan migrate

```
## Step 9: Set Up Storage Link
Create a symbolic link from the `public/storage` directory to the `storage/app/public` directory:
```bash
php artisan storage:link
```

## Step 10: Test Your Application
Open your web browser and navigate to `http://your-server-ip/`. You should see the Laravel welcome page.


# DATABASE 
## Step 1: Access MySQL
Open a terminal and log in to the MySQL server using the following command:
```bash
mysql -u root -p
```
You will be prompted to enter the MySQL root password.

## Step 2: Create a Database
To create a new database, use the following command:
```bash
CREATE DATABASE main_hrm;
```
Replace `main_hrm` with the desired name for your database.

## Step 3: Create a User
Now, let's create a MySQL user. Replace `hrm_user` and `your_password` with your preferred username and password:

```sql
CREATE USER 'hrm_user'@'localhost' IDENTIFIED BY 'T@keAbreaKFr0m!taqanah';
```

## Step 4: Grant Privileges
Grant all privileges on the database to the user:

```sql
GRANT ALL PRIVILEGES ON *.* TO 'hrm_user'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost';
```


GRANT ALL PRIVILEGES ON *.* TO 'monu'@'localhost';

## Step 5: Flush Privileges
After granting privileges, run the following command to apply the changes immediately:

```sql
FLUSH PRIVILEGES;
```
## Step 6: Exit MySQL
Exit the MySQL console by typing:
```sql
EXIT;
```

## Optional Step: Verify the New User
If you want to verify that the new user has been created and has the necessary privileges, you can log in to MySQL with the new user:
```bash
mysql -u hrm_user -p
```
Enter the password when prompted.



## Set maximum execution time
Set maximum execution time to unlimited (0)

```php
set_time_limit(0);
```
```php
ini_set('max_execution_time', 0); //0=NOLIMIT
```



## For Module Assets publish
```php artisan vendor:publish --tag=public --provider="Modules\EmployeeDocuments\Providers\EmployeeDocumentsServiceProvider"
```