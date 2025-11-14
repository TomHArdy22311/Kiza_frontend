pipeline {
  agent any

  tools {nodejs "Simon"}

  stages {

    stage('Git') {
      steps {
        git(url: 'https://github.com/TomHArdy22311/Kiza_frontend.git', branch: 'main')
      }
    }

    stage('Installation') {
          steps {
            sh 'npm install'
          }
        }

    stage('start') {
      steps {
         sh 'npm start'
      }
    }
  }
}