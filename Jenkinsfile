pipeline{

    agent any
    stages{
        stage("Testing"){
            steps{
                sh "npm install"
                sh "cypress install"
                sh "npx cypress run"              
            }
        }
    }
}