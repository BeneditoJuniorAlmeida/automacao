pipeline{

    agent any
    stages{
        stage("Testing"){
            steps{
                sh "npm install cypress --save-dev"
                sh "npx cypress run"              
            }
        }
    }
}