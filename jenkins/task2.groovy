pipeline {
    agent any

    stages {
        stage('Backup Jenkins Home') {
            steps {
                sh '''
                    TIMESTAMP=$(date +%Y%m%d_%H%M%S)
                    BACKUP_DIR="/var/backups/jenkins"
                    sudo mkdir -p $BACKUP_DIR
                    tar -czf $BACKUP_DIR/jenkins_backup_$TIMESTAMP.tar.gz -C $JENKINS_HOME .
                '''
            }
        }
    }
}
