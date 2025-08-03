pipeline{
  agent any
  stages {
    stage ( 'job A')
    {
      steps{
        sh '''
        echo"USERNAME=adminuser" > credential.env
        '''
      }
    }
    stage (' archiving variable in file')
    {
      steps{
        sh '''
        mkdir -p filearch
        mv credential.env filearch/

        '''
      
       #Jenkins pipeline step to archive the file
        archiveArtifacts filearch : 'filearch/credential.env', onlyIfSuccessful: true
    }  
    }
   
  }
}

        
