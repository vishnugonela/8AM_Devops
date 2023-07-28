pipeline{
	agent any
	stages{
		stage('Build'){
			steps{
				sh' echo "build is successful" '
			}			
		}
	}
}
