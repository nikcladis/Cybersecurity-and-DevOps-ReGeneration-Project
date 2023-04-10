pipeline {
    agent any

    environment {
        DOCKER_REGISTRY = 'docker.io'
        DOCKER_IMAGE_NAME = 'nikcladis/regeneration-sysdevops-project'
    }

    stages {
        stage('Clone repository') {
            steps {
                git 'https://github.com/nikcladis/toDoAppWithLogin-Regeneration-CyberSecurity-DevOps.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Archive JAR file') {
            steps {
                archiveArtifacts 'target/*.jar'
            }
        }

        stage('Build Docker image') {
            steps {
                sh 'docker build -t $DOCKER_REGISTRY/$DOCKER_IMAGE_NAME .'
            }
        }

        stage('Push Docker image to Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    sh "docker login $DOCKER_REGISTRY -u $DOCKER_USERNAME -p $DOCKER_PASSWORD"
                }
                sh "docker push $DOCKER_REGISTRY/$DOCKER_IMAGE_NAME"
            }
        }
    }
}