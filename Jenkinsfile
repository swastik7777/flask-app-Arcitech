pipeline {
    agent any
    
    stages {
        stage("Clone the repository"){
            steps{
                git url: "https://github.com/swastik7777/flask-app-Arcitech.git" , branch: "main"
            }
        }
        stage("Code Build(Install dependencies)"){
            steps{
                sh "docker build . -t flask:latest"
            }
        }
        stage("Deploy App"){
            steps{
                sh "docker run -d -p 8000:8000 flask:latest"
            }
        }
    }
}
