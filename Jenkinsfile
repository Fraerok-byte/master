pipeline {
    agent any

    stages {
        stage('1-Build') {
            steps {
                echo "Start of Stage Build"
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
	       steps {
		       sh sudo scp -i /home/ec2-user/.ssh/webkey .* ec2-user@54.227.201.253:/var/www/html
		       echo "Start transfer"
				}
    }
}
