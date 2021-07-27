pipeline {
    agent any
    options {
        ansiColor('xterm')
    }
    stages {
        stage('Build') {
            steps {
                echo '\033[34mConstruyendo\033[0m \033[33mla\033[0m \033[35mimagen\033[0m'
                sh '''./gradlew assemble'''
            }
        }
        stage('Archive') {
            steps {
                echo '\033[34mDesplegando\033[0m \033[33mla\033[0m \033[35maplicación\033[0m'
                archiveArtifacts artifacts: 'build/libs/*.jar'
            }
        }
        stage('Deploy') {
            steps {
                echo '\033[34mEjecutando\033[0m \033[33mla\033[0m \033[35maplicación\033[0m'
                sh '''./gradlew bootJar --args='--server.port=5000' '''
            }
        }
    }
}
