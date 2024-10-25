pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/mr-spacemango/2301_ISA2'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t 2301_ISA2:latest .'
            }
        }
        stage('Remove Existing Container') {
            steps {
                sh 'docker rm -f 2301_ISA2 || true'
            }
        }
        stage('Run Container') {
            steps {
                sh 'docker run -d --name 2301_ISA2 -p 5000:5000 2301_ISA2:latest'
            }
        }
    }
}
