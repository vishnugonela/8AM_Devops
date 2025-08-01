pipeline{
  any agent
  stages{
    stage('faile to run on NODE1'){
      agent { lable 'NODE1' }
      steps{
        echo "failed to run on NODE1"

      sh '''
      sudo install apache2
      '''
        script{
          def a = false || true
          echo " groovy result is: ${a}
        }
      }
    }
    stage('continue to run on NODE2'){
    agent { lable 'NODE2' }
      steps{
        echo " continue to run on NODE2 if failed to run on NODE1 "
        sh '''
        sudo apt update
        sudo apt install apache2
        systemctl start apache2
        '''
        
      
      }

    }
  }
}
