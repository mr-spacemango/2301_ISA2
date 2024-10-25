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
                script {
                    docker.build('2301_ISA2:latest')
                }
            }
        }
        stage('Remove Existing Container') {
            steps {
                script {
                    // Attempt to remove the container if it exists
                    sh 'docker rm -f 2301_ISA2 || true'
                }
            }
        }
        stage('Run Container') {
            steps {
                script {
                    // Run the container in detached mode with port mapping
                    sh 'docker run -d --name 2301_ISA2 -p 5000:5000 2301_ISA2:latest'
                }
            }
        }
    }
}
