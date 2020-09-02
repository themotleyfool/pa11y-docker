@Library('jenkins-shared-library@master')
import com.fool.jenkins.pipeline.deploy.*

properties(foolDeployTargetProps.props())
def deploy = new FoolDeploy()

node(label: 'linux') {
  deploy.wrap {
    stage('Deploy') {
      deploy.withCredentials() {
        sh './deploy.sh'
      }
    }
  }
}
