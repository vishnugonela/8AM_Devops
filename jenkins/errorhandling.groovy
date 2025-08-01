pipeline {
    agent any

    stages {
        stage('Run with Error Handling') {
            steps {
                script {
                    try {
                        echo 'Running important command...'
                        sh 'exit 1'  // This simulates a failure
                        echo 'This line will not run if the above fails'
                    } catch (err) {
                        echo "Error occurred: ${err}"
                    } finally {
                        echo 'Always run this part (cleanup or final message)'
                    }
                }
            }
        }
    }
}
