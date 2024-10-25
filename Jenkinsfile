pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/YourUsername/<RollNo_ISA2>'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('<roll_no>:latest')
                }
            }
        }
        stage('Remove Existing Container') {
            steps {
                sh 'docker rm -f <roll_no> || true'
            }
        }
        stage('Run Container') {
            steps {
                sh 'docker run -d --name <roll_no> <roll_no>:latest'
            }
        }
    }
}
