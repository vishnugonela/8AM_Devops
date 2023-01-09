pipeline {
  agent any
  stages {
    stage('Stage1') {
      steps {
        sh 'echo "From Stage1"'
      }
    }

    stage('Stage2') {
      parallel {
        stage('Stage2') {
          steps {
            sh 'echo "From Stage2"'
          }
        }

        stage('Stage2.1') {
          steps {
            sh '''sleep 5
echo "From Prallel stage2.1"'''
          }
        }

        stage('Stage2.2') {
          steps {
            sh '''sleep 5
echo "From parallel stage2.2"'''
          }
        }

        stage('Stage2.3') {
          steps {
            sh '''sleep 5
echo "From parallel stage2.3"'''
          }
        }

      }
    }

    stage('Stage3') {
      steps {
        sh 'echo "From stage3"'
      }
    }

  }
}