pipeline{
	agent any
	stages{
		stage('Build'){
			steps{
				sh' echo "build is successful" '
			}			
		}
		stage('Deploy'){
			steps{
				sh' echo "Deployment is successful" '
			}
		}
		stage('run'){
			steps{
				sh' bash -x $(WORKSPACE)/linux/task1.sh '
			}
		}
	}
}
