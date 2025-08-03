pipeline {
  agent any

  stages {
    stage('Save Logs') {
      steps {
        sh '''
          mkdir -p artifacts

          echo "#!/bin/bash" > runlog.sh
          echo "echo 'Job executed at $(date)'" >> runlog.sh
          echo "echo 'Status: SUCCESS'" >> runlog.sh

          chmod +x runlog.sh
          ./runlog.sh > artifacts/output.log 
        '''
      }
    }

    stage('Archive Script and Logs') {
      steps {
        archiveArtifacts artifacts: 'artifacts/*', onlyIfSuccessful: true
      }
    }
  }
}

          
          
