pipeline {
  agent any

  tools {nodejs "nodemeriha"}

  stages {

    stage('Git') {
      steps {
        git(url: 'https://github.com/TomHArdy22311/Kiza_frontend.git', branch: 'main')
      }
    }

    stage('Installation') {
          steps {
            bat 'npm install'
          }
        }

    stage('start') {
      steps {
         bat 'npm start'
      }
    }
  }
}