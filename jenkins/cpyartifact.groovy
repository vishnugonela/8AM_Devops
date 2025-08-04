pipeline {
  agent any

  stages {
    stage('Copy Artifacts from script-logger-job') {
      steps {
        copyArtifacts(
          projectName: 'Save logs',
          selector: [$class: 'LastSuccessfulBuildSelector'],
          filter: 'artifacts/*',
          target: 'imported'
        )
      }
    }

    stage('Display .sh Log and Output') {
      steps {
        sh '''
          echo "Imported files:"
          ls -l imported/

          echo "--- Content of runlog.sh ---"
          cat imported/runlog.sh

          echo "--- Re-running the script ---"
          chmod +x imported/runlog.sh
          ./imported/runlog.sh

          echo "--- Original output.log from previous run ---"
          cat imported/output.log
        '''
      }
    }
  }
}
