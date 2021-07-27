pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh '''docker-compose build
                docker image tag alpine-jre hello-gradle:MAIN-1.0.${BUILD_NUMBER}'''
            }
        }
         stage('Deploy') {
            steps {
                sh '''docker-compose build                
                '''docker-compose up -d'''
            }
        }
    }
}
