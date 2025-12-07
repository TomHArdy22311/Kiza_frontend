pipeline {
  agent any

  tools {nodejs "Simon"}

  stages {

    stage('Git') {
      steps {
        git(url: 'https://github.com/TomHArdy22311/Kiza_frontend.git', branch: 'main')
      }
    }

    stage('Image Generation') {
          steps {
            sh 'docker build -t frontend .'
          }
        }

    stage('Run Container') {
      steps {
        sh 'docker run frontend'
      }
    }
  }
}