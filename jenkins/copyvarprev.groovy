pipeline {
  agent any
  stages {
    stage('Copy var from  prev job') {
      steps {
       copyArtifacts(
                    projectName: 'globalvar',
                    filter: 'filearch/credential.env',
                    selector: [$class: 'StatusBuildSelector', stable: false])
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

     
          
          
