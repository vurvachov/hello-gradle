pipeline {
    agent any
     options {
        ansiColor('xterm')
    }
    stages {
        stage('Build') {
            steps {
                echo 'Construyendo la imagen'
                sh '''docker-compose build
                docker image tag alpine-jre hello-gradle:MAIN-1.0.${BUILD_NUMBER}'''
            }
        }
         stage('Deploy') {
            steps {
                echo 'Desplegando aplicación'
                sh '''docker-compose build                
                docker-compose up -d'''
            }
        }
    }
}
