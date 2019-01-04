pipeline {
  environment {
    registry = 'marcotomas/helloworld-go'
    registryCredential = 'dockerhub'
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/marcotomas/docker-helloworld.git'
      }
    }
    stage('Building image') {
      steps{
        script {
          docker.build registry + “:$BUILD_NUMBER”
        }
      }
    }
  }
}