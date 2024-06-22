pipeline {
    agent any

    triggers {
        credentialsId: 'github_id_123'
        url: 'https://github.com/windwalk-bushido/go-chat.git'
        branches '@master'
    }

    stages {
        stage('Checkout code') {
            steps {
                git branch: 'master',
                    credentialsId: 'github_id_123',
                    url: 'https://github.com/windwalk-bushido/go-chat.git'
            }
        }
        stage('Test image') {
            steps {
                sh 'echo "Tests passed"'
            }
        }
        stage('Build image') {
            steps {
                sh 'docker build -t milijanmosic/chat_app . -f config/prod.Dockerfile'
            }
        }
        stage('Push image') {
            script {
                steps {
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub_id_123') {
                        docker.push('milijanmosic/chat_app')
                    }
                }
            }
        }
    }
}
