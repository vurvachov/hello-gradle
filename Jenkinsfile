pipeline {
    agent any
     options {
        ansiColor('xterm')
    }
    stages {
        stage('Build') {
            steps {
                echo ' \ 0 33 [34mConstruyendo \ 0 33 [0m \ 0 33 [33mcolorido \ 0 33 [0m \ 0 33 [35mimagen \ 0 33 [0m '
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
