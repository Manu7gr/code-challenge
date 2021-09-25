def notifySlack(String buildStatus = 'STARTED') {
    // Build status of null means success.
    buildStatus = buildStatus ?: 'SUCCESS'

    def color

    if (buildStatus == 'STARTED') {
      color = '#D4DADF'
    } 
    else if (buildStatus == 'SUCCESS') {
      color = '#BDFFC3'
    } 
    else {
      color = '#FF9FA1'
    }

    def msg = "${buildStatus}: Job `${env.JOB_NAME}`  Build_No #${env.BUILD_NUMBER}:\n${env.BUILD_URL}"

    slackSend(color: color, message: msg)
}
pipeline {
    agent any
    stages {
        stage('Init-notify') {
           steps{
             notifySlack()
           }
       }
        stage('Build') {
            steps {
                sh '''
                   docker build -t myapp:${BUILD_NUMBER} nodejs/
                sh '''
            }
        }
        stage('Pre-clean up') {
            steps {
                sh '''
                   docker rm -f my-app
                sh '''
            }
        }
        stage('Run app') {
            steps {
                sh '''
                   docker run --name=my-app -p 9090:8080 -d myapp:${BUILD_NUMBER}
                sh '''
            }
        }
        stage('Test app') {
            steps {
                sh '''
                   sleep 5
                   curl -i localhost:9090
                sh '''
            }
        } 
   }
   post {
     always {
       notifySlack(currentBuild.result)
    }
  }
}
