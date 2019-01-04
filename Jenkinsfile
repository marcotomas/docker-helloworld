pipeline {
  environment {
    registry = 'marcotomas/helloworld-go'
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
 /*agent {
        docker { image 'jenkinsci/slave' }
  }*/
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
          dockerImage = docker.build registry + ':$BUILD_NUMBER'
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
  }
}