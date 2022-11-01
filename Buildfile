pipeline {
  agent any
  tools {
    maven 'MAVEN'
  }
  
  stages {
    stage('Build Maven') {
      steps{
        checkout([$class: 'GitSCM', branches: [[$name: '*/master']], extension: [], userRemoteConfigs: [[credentialsId 'nexus', url: 'https://github.com/Jahnavendra/ECS.git'
          
         sh "mvn -Dmaven.test.failure.ignore=true clean package"
          
       }
     }
   }
 }
        
