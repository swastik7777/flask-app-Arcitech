- Step 1: Install Python and pip
First, update your package list and install prerequisites:

sudo apt update
sudo apt install -y software-properties-common
Then, install Python:
sudo apt install -y python3 python3-pip


- Step 2: Install Git
Install Git by running:
sudo apt install -y git

- Step 3: Install Nginx
Install Nginx by running:
sudo apt install -y nginx

- Step 4: Deploy a Simple Web Application
4.1 Create a Simple Python Flask Application
Create a directory for your Flask application and navigate into it:

mkdir my_flask_app
cd my_flask_app
Initialize a virtual environment:

python3 -m venv venv
source venv/bin/activate

- step 5: Install pip
sudo apt install python3-pip

- step 6: Install Flask
Install Flask:
pip install Flask

- Step 7: Create a file named app.py with the following content or Clone code from app.py in Github 

- Step 8:
Install Gunicorn in your virtual environment:

pip install gunicorn
Run your Flask application with Gunicorn to ensure it works:
sudo nano /etc/nginx/sites-enabled/default

- NOTE: default rule in above should be replace with below configuration
server {
    listen 80;
    server_name 34.228.12.170;

    location / {
        proxy_pass http://0.0.0.0:8000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }
}
- Run this command where u code is present
Run this is command to deploy application
gunicorn --bind 0.0.0.0:8000 app:app

Now u can access this Application on our Ec2 Public ip .
