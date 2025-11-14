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

    stage('Build') {
      steps {
        sh 'npm run build'
      }
    }

    stage('start') {
      steps {
         sh 'npm start'
      }
    }
  }
}