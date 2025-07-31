pipeline{
agent none
 stages{
#First  stages on NODE1
sh '''
        stage('Stage 1 - NODE1') {
            agent { label 'NODE1' }
            steps {
                echo "Running Stage 1 on NODE1"
            }
        }

      stage('Stage 2-NODE1'){
       agent { label 'NODE1'}

        Steps{
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

      '''


}

}
