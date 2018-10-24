node {
    stage('configFile Plugin') {


	sh 'env > env.txt' 
	for (String i : readFile('env.txt').split("\r?\n")) {
    		println i
	}
            echo " =========== ^^^^^^^^^^^^ Reading config via Python... "
            //	sh "echo ${env.PACKER_OPTIONS}"
            echo " =========== ~~~~~~~~~~~~ ============ "
        }
    }
