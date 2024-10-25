pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/mr-spacemango/2301_ISA2'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('2301_ISA2:latest')
                }
            }
        }
        stage('Remove Existing Container') {
            steps {
                sh 'docker rm -f 2301_ISA2 || true'
            }
        }
        stage('Run Container') {
            steps {
                sh 'docker run -d --name 2301_ISA2 2301_ISA2:latest'
            }
        }
    }
}