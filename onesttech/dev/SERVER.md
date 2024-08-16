# Install Linux, Nginx, MySQL, PHP (LEMP stack) on Ubuntu

## Step 1 — Logging in as root
To log into your server, you will need to know your server’s public IP address. You will also need the password or the private key for the root user’s account if you installed an SSH key for authentication.
```bash
ssh root@your_server_ip
```

## Step 2 — Creating a New User
Once you log in as root, you’ll be able to add the new user account. In the future, we’ll log in with this new account instead of root.

```bash
sudo adduser taqnahhr
```
You will be asked a few questions, starting with the account password.


## Step 3 — Granting Administrative Privileges
As root, run this command to add your new user to the sudo group (substitute the highlighted sammy username with your new user):
```bash
sudo usermod -aG sudo taqnahhr
```

## Step 4 — Setting Up a Firewall
Ubuntu 22.04 servers can use the UFW firewall to ensure only connections to certain services are allowed. You can set up a basic firewall using this application.
```bash
ufw app list
```
```bash
#    Output
    Available applications:
    OpenSSH
```

You will need to make sure that the firewall allows SSH connections so that you can log into your server next time. Allow these connections by typing:
```bash
ufw allow OpenSSH
```
Now enable the firewall by typing:
```bash
ufw enable
```
Type y and press ENTER to proceed. You can see that SSH connections are still allowed by typing:
```bash
ufw status
```

Output

```bash
Status: active

To                         Action      From
--                         ------      ----
OpenSSH                    ALLOW       Anywhere
OpenSSH (v6)               ALLOW       Anywhere (v6)
```
## Step 5 — Enabling External Access for Your Regular User
Now that you have a regular user for daily use, you will need to make sure that you can SSH into the account directly.
If the root Account Uses Password Authentication
```bash
ssh taqnahhr@your_server_ip
```

If the root Account Uses SSH Key Authentication
```bash
rsync --archive --chown=taqnahhr:taqnahhr ~/.ssh /home/taqnahhr
```

## Step 1: Install PHP 8.1 and Necessary Extensions
```bash
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt update

# Install PHP 8.1 and necessary extensions
sudo apt install php8.1 php8.1-fpm php8.1-mbstring php8.1-xml php8.1-mysql php8.1-zip php8.1-gd php8.1-intl php8.1-bcmath php8.1-soap php8.1-gmp php8.1-ldap php8.1-bz2 php8.1-curl php8.1-imagick php8.1-dev

```

## Step 2: Install Nginx
```bash
sudo apt update
sudo apt install nginx
```

### Debian/Ubuntu:
```bash
sudo apt update
sudo apt install nginx

sudo ufw allow 'Nginx HTTP'
# Start Nginx
sudo systemctl start nginx

# Restart Nginx
sudo systemctl restart nginx


# PHP 8.1 Install
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install php8.1 php8.1-fpm php8.1-mbstring php8.1-xml php8.1-mysql php8.1-zip php8.1-gd php8.1-intl php8.1-bcmath php8.1-soap php8.1-gmp php8.1-ldap php8.1-bz2 php8.1-curl php8.1-imagick php8.1-dev

#if php 8.2 
sudo apt install php8.2 php8.2-fpm php8.2-mbstring php8.2-xml php8.2-mysql php8.2-zip php8.2-gd php8.2-intl php8.2-bcmath php8.2-soap php8.2-gmp php8.2-ldap php8.2-bz2 php8.2-curl php8.2-imagick php8.2-dev

sudo apt install php8.3 php8.3-fpm php8.3-mbstring php8.3-xml php8.3-mysql php8.3-zip php8.3-gd php8.3-intl php8.3-bcmath php8.3-soap php8.3-gmp php8.3-ldap php8.3-bz2 php8.3-curl php8.3-imagick php8.3-dev


# MYSQL INSTALL
sudo apt update
sudo apt install mysql-server


# PhpMyAdmin
sudo apt update
sudo apt install phpmyadmin


```

### Red Hat / CentOS:

```bash
sudo yum install nginx
# Start Nginx
sudo systemctl start nginx

# Restart Nginx
sudo systemctl restart nginx


# PHP 8.1 Install
sudo yum install epel-release
sudo yum install -y https://rpms.remirepo.net/enterprise/remi-release-8.rpm
sudo dnf install -y dnf-utils
sudo dnf module reset php
sudo dnf module enable php:remi-8.1 -y
sudo dnf install -y php php-fpm php-mbstring php-xml php-mysql php-zip php-gd php-intl php-bcmath php-soap php-gmp php-ldap php-bz2 php-curl php-imagick php-devel


# MYSQL INSTALL
sudo yum install mysql-server


# PhpMyAdmin
sudo yum update
sudo yum install phpmyadmin


```
### Fedora:

```bash
sudo dnf install nginx
# Start Nginx
sudo systemctl start nginx

# Restart Nginx
sudo systemctl restart nginx

# PHP 8.1 Install
sudo dnf install -y dnf-plugins-core
sudo dnf copr enable @remi/php81
sudo dnf install -y php php-fpm php-mbstring php-xml php-mysql php-zip php-gd php-intl php-bcmath php-soap php-gmp php-ldap php-bz2 php-curl php-imagick php-devel


# MYSQL INSTALL
sudo dnf install mysql-server

# PhpMyAdmin
sudo yum update
sudo yum install phpmyadmin


```
### openSUSE:

```bash
sudo zypper install nginx
# Start Nginx
sudo systemctl start nginx

# Restart Nginx
sudo systemctl restart nginx


# PHP 8.1 Install
sudo zypper install -y php8 php8-fpm php8-mbstring php8-xml php8-mysql php8-zip php8-gd php8-intl php8-bcmath php8-soap php8-gmp php8-ldap php8-bz2 php8-curl php8-imagick php8-devel

# MYSQL INSTALL
sudo zypper install mysql-server


```
### Arch Linux:

```bash
sudo pacman -S nginx

# Start Nginx
sudo systemctl start nginx

# Restart Nginx
sudo systemctl restart nginx

# PHP 8.1 is not available in the official Arch repositories
# You may need to use the AUR or other third-party repositories
# Example with yay AUR helper:
yay -S php81 php81-fpm php81-mbstring php81-xml php81-mysql php81-zip php81-gd php81-intl php81-bcmath php81-soap php81-gmp php81-ldap php81-bz2 php81-curl php81-imagick php81

# MYSQL INSTALL
sudo pacman -S mariadb


```
### macOS (Homebrew):

```bash
brew install nginx

# Start Nginx
brew services start nginx

# Restart Nginx
brew services restart nginx



# PHP 8.1 is not available in the official Homebrew repositories
# You may need to use taps or other methods
# Example with pecl for extensions:
brew install php@8.1
pecl install imagick
# ... (install other extensions as needed)

# MYSQL INSTALL
brew install mysql


# PhpMyAdmin
brew install phpmyadmin


```

## Nginx configuration files

### Debian/Ubuntu:
Main Configuration File: `/etc/nginx/nginx.conf`
Default Site Configuration: `/etc/nginx/sites-available/default`

### Red Hat / CentOS / Fedora:
Main Configuration File: `/etc/nginx/nginx.conf`
Default Site Configuration: `/etc/nginx/conf.d/default.conf`

### openSUSE:
Main Configuration File: `/etc/nginx/nginx.conf`
Default Site Configuration: `/etc/nginx/vhosts.d/default`

### Arch Linux:
Main Configuration File: `/etc/nginx/nginx.conf`
Default Site Configuration: `/etc/nginx/conf.d/default.conf`


### macOS (Homebrew):
Main Configuration File: `/usr/local/etc/nginx/nginx.conf`
Default Site Configuration: `/usr/local/etc/nginx/servers/default`



## Step 3: Configure Nginx for Laravel
Create an Nginx server block configuration file for your Laravel project:

```bash
sudo nano /etc/nginx/sites-available/default.conf
```
Add the following configuration:

```bash
server {
    listen 80;
    server_name domain.com *.domain.com;
    root /var/www/html/hrm/public;

    index index.php index.html index.htm index.nginx-debian.html;

    location / {
        try_files $uri $uri/ /index.php?$query_string;
    }

    location ~ \.php$ {
        include snippets/fastcgi-php.conf;
        fastcgi_pass unix:/var/run/php/php8.1-fpm.sock;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        include fastcgi_params;
    }
    location ~ /\.ht {
        deny all;
    }
    error_log  /var/log/nginx/hrm-name_error.log;
    access_log /var/log/nginx/hrm-name_access.log;
}

```

Enable the Nginx server block and restart Nginx:
```bash
sudo ln -s /etc/nginx/sites-available/default.conf /etc/nginx/sites-enabled
sudo nginx -t
sudo systemctl restart nginx

```
## Step 4: Configure PHP-FPM
Edit the PHP-FPM configuration file:
```bash
sudo nano /etc/php/8.1/fpm/pool.d/www.conf
```

Make sure the following lines are set:
```bash
listen = /var/run/php/php8.1-fpm.sock
listen.owner = www-data
listen.group = www-data
listen.mode = 0660
```
Restart PHP-FPM:
```bash
sudo systemctl restart php8.1-fpm
```
## Step 5: Configure MySQL
Install MySQL server:
```bash
sudo apt install mysql-server
```
Secure your MySQL installation:

```bash
sudo mysql_secure_installation
```
Follow the prompts to set a root password and secure your MySQL installation.
