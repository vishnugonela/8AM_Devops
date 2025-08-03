pipeline {
  agent any
  stages {
    stage('Copy var from  prev job') {
      steps {
       copyArtifacts(
                    projectName: 'filesource.groovy',
                    filter: 'filearch/credential.env',
                    selector: [$class: 'StatusBuildSelector', stable: false])
          }
    }

    stage('Use Variable') {
      steps {
        sh '''
          echo "Reading credential.env"
          . filearch/credential.env
          echo "USERNAME: $USERNAME"
        '''
      }
    }
  }
}

     
          
          
