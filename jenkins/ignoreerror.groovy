pipeline{
  agent any
  stages{
    stage('correct steps'){
      steps{
        echo " correct execution "
        sh '''
        du -h
        '''
      }
    }
    stage('ignore error'){
      steps{
        echo " ignoring error "

         script{
          def a = false || true
          echo " groovy result is: ${a} "
        sh '''
     apt install apache2
        '''
       
        }
      }
    }

    stage('continue to run'){
      steps{
        echo " continue to run even if prev stages is fails "
        sh '''
        hostname
        '''
      }
    }









    
  }
}
