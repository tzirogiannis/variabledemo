node {
    properties([parameters([choice(choices: "dev\ntest\nprod",
        description: '', name: 'environment')]), pipelineTriggers([])])

	environment {
		switch(params.environment) {
        	case "dev": 
            		datas = readYaml file: 'params/dev/dev.yml'
        	break
        	case "test":
            		datas = readYaml file: 'params/test/test.yml'
        	break
        	case "prod":
            		datas = readYaml file: 'params/prod/prod.yml'
        	break
        	default:
            		result = "dev"
        	break
    		}  
	}


    stage('Checkout'){
          checkout scm
       }

    stage('config variables') {

	echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"

        sh 'ls -la'
//	sh './one.sh'

    //  sh 'env > env.txt' 
	//   for (String i : readFile('env.txt').split("\r?\n")) {
    //	    	println i
	//  }
        echo " =========== ^^^^^^^^^^^^ Reading config via Python... "
        sh "echo PACKER_OPTIONS is ${datas.PACKER_OPTIONS}"
        sh "echo ENVIRONMENT is ${params.environment}"
        echo " =========== ~~~~~~~~~~~~ ============ "
        }
    }
