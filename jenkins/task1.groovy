pipeline{

    agent any

    stages{
        stage(serverdetails){
            steps{
                sh '''
    
                     echo "server details"

                     CPU details , `mpstat`
                '''
            }
        }
    }
}
