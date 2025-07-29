pipeline {
    agent any

    stages {
        stage('Get Server Details') {
            steps {
                sh '''
                
                    echo "$(date): Printing Server Details...."
                    echo "Hostname: $(hostname)"
                    echo "System Details: $(uname -a)"
                    echo "IP Addresses:$ (ip a)" 
                    echo "Free Memory available:"
                    free -h
                    CPU details, `mpstat`
                '''
            }
        }
    }
}
