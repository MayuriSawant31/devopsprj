pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/MayuriSawant31/devopsprj.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t petcareapp .'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run -d -p 8080:8080 --name petcarecontainer petcareapp'
                }
            }
        }
    }
}
