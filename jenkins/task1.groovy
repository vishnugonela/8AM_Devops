pipeline{

    agent any

    stages{
        stage(serverdetails){
            steps{
                sh '''
    
                     echo "server details"

                     echo "CPU details , `mpstat`"
                '''
            }
        }
    }
}
