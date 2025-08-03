pipeline{
  agent any
  stages{
    stage ( ' copyvar2 ')
    {
      steps{
        copyArtifacts(
          ProjectName:globalvar.groovy,
          selector: lastSuccessful(),
          filter: 'filechar/credential.env'
          )
         }
    }
        stage('Use Variable') {
            steps {
                sh '''
                    source filechar/credential.env
                    echo "API_KEY: $API_KEY"
                '''
            }
        }
      }
    }
     
          
          
