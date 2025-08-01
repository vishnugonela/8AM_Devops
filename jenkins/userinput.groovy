pipeline{
agent any
stages{
  stage("user input validation"){
    steps{
      sh '''
      if [ -z $username ];
      then
      echo "error:entered user name is empty, please provide a valid useranme."

      else 
      echo "Entered user name is : "

      fi
      #we need to add the parameter in jenikins
      '''
    }
  }
}
}
