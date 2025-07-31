pipeline{
agent none
 stages{
       stage('Stage 1 - NODE1') {
       agent { label 'NODE1' }
            steps {
                           echo "Running Stage 1 on NODE1"
             sh '''
                    sudo apt update
                    sudo apt install -y apache2
                    sudo systemctl start apache2
                '''
            }
        }

      stage('Stage 2-NODE1'){
       agent { label 'NODE1'}
        steps{
        echo "Running Stage2 on NODE1"
     }

   }
    // Next 2 stages on NODE2
        stage('Stage 3 - NODE2') {
            agent { label 'NODE2' }
            steps {
                echo "Running Stage 6 on NODE2"
            }
        }
        stage('Stage 4 - NODE2') {
            agent { label 'NODE2' }
            steps {
                echo "Running Stage 7 on NODE2"
            }
        }

      


}

}
