pipeline {
	agent { 
		dockerContainer { image 'hello-world' }
	}

	stages	{
		stage('Deploying helloworld container') {
			steps{
				sh '''
					echo test
				'''
			}
		}
	}
}
