pipeline {
  agent any
  stages {
    stage('Copy var from  prev job') {
      steps {
       CopyArtifacts(
                    projectName: 'globalvar.groovy',
                    filter: 'filearch/credential.env',
                    selector:'latestSuccessful')
          }
    }

    stage('Use Variable') {
      steps {
        sh '''
          echo "Reading credential.env"
          source filearch/credential.env
          echo "USERNAME: $USERNAME"
        '''
      }
    }
  }
}

     
          
          
