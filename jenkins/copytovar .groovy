pipeline{
  agent any
  stages{
    stage ( ' copyvar2 ')
    {
      steps{
        copyArtifacts(
          ProjectName:globalvar.groovy,
          selector: lastSuccessful(),
          filter:filechar
          
          
