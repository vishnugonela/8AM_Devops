pipeline {
  agent any
  stages {
    stage('Copy var from  prev job') {
      steps {
       step{ [$class: 'CopyArtifact',
                    projectName: 'globalvar.groovy',
                    filter: 'filearch/credential.env',
                    selector: [$class: 'LastSuccessfulBuildSelector']       ]}
        
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

     
          
          
