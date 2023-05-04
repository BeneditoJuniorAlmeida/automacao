pipeline{

    agent any
    stages{
        stage("Testing"){
            steps{
                sh "npm install"
                sh "npm cypress run"              
            }
        }
    }
}