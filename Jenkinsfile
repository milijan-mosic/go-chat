pipeline {
    agent any

    triggers {
        scm {
            credentialsId: 'github_id_123'
            url: 'https://github.com/windwalk-bushido/go-chat.git'
            branches '@master'
        }
    }

    stages {
        stage('Checkout code') {
            steps {
                git branch: 'master',
                    credentialsId: 'github_id_123',
                    url: 'https://github.com/windwalk-bushido/go-chat.git'
            }
        }
        stage('Build image') {
            steps {
                sh 'docker build -t milijanmosic/chat_app . -f config/prod.Dockerfile'
            }
        }
        stage('Push image') {
            steps {
                docker.withRegistry('https://index.docker.org', 'dockerhub_id_123') {
                    docker.push('milijanmosic/chat_app')
                }
            }
        }
    }
}
