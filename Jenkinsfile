pipeline{

    agent any
    stages{
        stage("Testing"){
            steps{
                sh 'npm ci'
                sh "npm run test"           
            }
        }
    }
}