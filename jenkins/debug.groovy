pipeline{

  agent any 

  environment{
    DEBUG = 'true'   // Change to 'false' to disable debug
  }
  
  stages{
    stage('checkout'){
      steps{
        sh '''
        [ "$DEBUG" = "true" ] && set -x
        echo "Checking out code"

        '''
    }

     
        }


     stage('Build'){
        steps{
          sh '''
          [ "$DEBUG" = "True" ] && set -x
          echo " Building a project "

          '''
      }

  
    }
  }
  
}

