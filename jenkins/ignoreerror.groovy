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

    sh '''
   sudo apt update 
 apt install -y apache2
        '''

    script {
      def a = false || true
      echo "Groovy result is: ${a}"
       
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
