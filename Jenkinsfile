node {

     def app
     stage('clone repository') {
         checkout scm
     }

     stage('build image') {
         app = docker.build ("ankababu/mvn-hello-world") 
     }
     
     stage('test image') {
         app.inside {
            echo "tests done"
         }
     }

     stage('push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub') {
              app.push("${env.BUILD_NUMBER}")
              app.push("latest")
        }
           echo "trying to push image to docker hub"
     }
}
