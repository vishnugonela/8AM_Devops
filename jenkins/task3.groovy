pipeline {
    agent none

    stages {
        stage('Stages on NODE1') {
            agent { label 'NODE1' }
            steps {
                echo "Stage 1 on NODE1"
                echo "Stage 2 on NODE1"
                echo "Stage 3 on NODE1"
                echo "Stage 4 on NODE1"
                echo "Stage 5 on NODE1"
            }
        }

        stage('Stages on NODE2') {
            agent { label 'NODE2' }
            steps {
                echo "Stage 6 on NODE2"
                echo "Stage 7 on NODE2"
                echo "Stage 8 on NODE2"
                echo "Stage 9 on NODE2"
                echo "Stage 10 on NODE2"
            }
        }
    }
}
