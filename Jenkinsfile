pipeline {
  agent any

  tools {nodejs "Simon"}

  stages {

    stage('Git') {
      steps {
        git(url: 'https://github.com/TomHArdy22311/Kiza_frontend.git', branch: 'main')
      }
    }

    stage('Image Pull') {
      steps {
        sh 'docker pull anthony1985/kiza_frontend:latest'
      }
    }

    stage('Image Generation') {
          steps {
            sh 'docker build -t frontend .'
          }
        }

    stage('Run Container') {
      steps {
        sh 'docker stop optimistic_morse'
        sh 'docker rm optimistic_morse'
        sh 'docker run -d -p 4200:80 frontend'
      }
    }
  }
}