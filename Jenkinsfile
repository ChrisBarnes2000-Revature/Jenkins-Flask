pipeline {
  agent any

  stages {
    // stage ('Build') {
    //   steps {
    //
    //     echo 'Building ... '
    //     sh 'pip install -r Requirements.txt'
    //   }
    // }
    // stage ('Test') {
    //   steps {
    //     echo 'Testing ... '
    //     sh 'python3 test.py'
    //   }
    // }
    stage ('Deploy') {
      steps {
        echo 'Deploying ...'
        git 'https://github.com/ChrisBarnes2000-Revature/Jenkins-Flask.git'
        // force stop docker and clean up
        sh "docker system prune -af"
        // re-download everything
        sh "docker build -t flask1 $WORKSPACE"
        // Run flask docker container.
        sh "docker-compose -f $WORKSPACE/docker-compose.yaml up -d"
        // sh 'docker-compose up --build -d'
        // echo 'Go To http://Localhost:5000 for Spys Journal'
      }
    }
    // stage ('Discord') {
    //   steps {
    //     discordSend webhookURL: 'https://discord.com/api/webhooks/994018555341307966/V-Or2AnFnDNpfHa7slRrl2S0rhdybzYSnDNzKHVHgnKxJHCWG8iXWVQAPNjsa8hvHJ_q',
    //                 enableArtifactsList: false, scmWebUrl: '',
    //                 title: 'Project1'+JOB_NAME, link: env.BUILD_URL,
    //                 description: '',
    //                 image: '', thumbnail: '',
    //                 footer: 'Jenkins Pipeline Build',
    //                 result: currentBuild.currentResult
    //   }
    // }
  }

  // post {
  //   success {
  //     mail to: 'Chris.Barnes.2000@me.com',
  //     subject: "Job '${JOB_NAME}' (${BUILD_NUMBER}) Was A Success",
  //     body: "Please go to ${BUILD_URL} and verify the build"
  //   }
  //   failure {
  //     mail to: 'Chris.Barnes.2000@me.com',
  //     subject: "Job '${JOB_NAME}' (${BUILD_NUMBER}) Failed",
  //     body: "Please go to ${BUILD_URL} and verify the build"
  //   }
  // }
}