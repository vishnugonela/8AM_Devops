pipeline {
  agent any
  stages {
    stage('Job A') {
      steps {
        sh '''
          echo "USERNAME=adminuser" > credential.env
        '''
      }
    }
    stage('Archiving Variable in File') {
      steps {
        sh '''
          mkdir -p filearch
          mv credential.env filearch/
        '''
        // Jenkins pipeline step to archive the file
        archiveArtifacts artifacts: 'filearch/credential.env', onlyIfSuccessful: true
      }
    }
  }
}
