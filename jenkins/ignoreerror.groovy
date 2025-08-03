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

    
catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
                    sh 'exit 1' 
}

 //script{
  // def a = false || true
  // echo "groovy result is :{$a}"

// }
   
     
       
        
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
