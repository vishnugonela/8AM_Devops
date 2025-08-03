pipeline {
  agent any
  stages {
    stage('Copy var from  prev job') {
      steps {
        copyArtifacts(
          projectName: 'globalvar.groovy',
          selector: lastSuccessful(),
          filter: 'filearch/credential.env'
        )
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

     
          
          
