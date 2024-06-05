- Step 1: Install Python and pip
- First, update your package list and install prerequisites:

sudo apt update
sudo apt install -y software-properties-common
Then, install Python:
sudo apt install -y python3 python3-pip


Step 2: Install Git
Install Git by running:
sudo apt install -y git

Step 3: Install Nginx
Install Nginx by running:
sudo apt install -y nginx

Step 4: Deploy a Simple Web Application
4.1 Create a Simple Python Flask Application
Create a directory for your Flask application and navigate into it:

mkdir my_flask_app
cd my_flask_app
Initialize a virtual environment:

python3 -m venv venv
source venv/bin/activate

Install pip
sudo apt install python3-pip

Install Flask:
pip install Flask
Create a file named app.py with the following content:

python code app.py in Github 

Install Gunicorn in your virtual environment:

pip install gunicorn
Run your Flask application with Gunicorn to ensure it works:


gunicorn --bind 0.0.0.0:8000 app:app

    server_name 34.228.12.170;

    location / {
        proxy_pass http://unix:/path/to/your/app/my_flask_app.sock;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }
}
