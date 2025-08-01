pipeline {
    agent any

    stages {
        stage('Backup Jenkins Home') {
            steps {
                sh '''
                    TIMESTAMP=$(date +%Y%m%d_%H%M%S)
                    BACKUP_DIR="$HOME/backups/jenkins"
                    mkdir -p $BACKUP_DIR
                    tar -czf $BACKUP_DIR/jenkins_backup_$TIMESTAMP.tar.gz -C $JENKINS_HOME .
                    #cp -r /var/lib/jenkins "$BACKUP_DIR" (
                    #cp -r /var/lib/jenkins "$BACKUP_DIR" (Copies Jenkins data to it.)
                '''
            }
        }
    }
}
