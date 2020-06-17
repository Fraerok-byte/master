pipeline {
    agent any
	environment {
      path_to_file = "/home/ec2-user/JenkinsFiles/*"
      remote_dir_path   = "/var/www/html"
	}

    stages {
        stage('1-Build') {
            steps {
                echo "Start of Stage Build"
				sh cd /home/ec2-user
				sh git clone https://github.com/Fraerok-byte/master.git
                echo "Building......."
                echo "End of Stage Build"
            }
        }
        stage('2-Test') {
            steps {
                echo "Start of Stage Test"
				sh cat index.html
                echo "Testing......."
                echo "End of Stage Build"
            }
        }
       stage('SSH transfer') {
			script {
				sshPublisher(
					continueOnError: false, failOnError: true,
					publishers: [
						sshPublisherDesc(
						configName: "${env.SSH_CONFIG_NAME}",
						verbose: true,
						transfers: [
							sshTransfer(
							sourceFiles: "${path_to_file}",
							removePrefix: "${path_to_file}",
							remoteDirectory: "${remote_dir_path}",
							execCommand: "ls"
							)
							])
						])
					}
				}
    }
}

