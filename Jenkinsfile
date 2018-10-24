node {
    stage('configFile Plugin') {


	sh 'env > env.txt' 
	for (String i : readFile('env.txt').split("\r?\n")) {
    		println i
	}
	
	for (String i : readFile('params\dev\test.txt').split("\r?\n")) {
                println i
        }
            echo " =========== ^^^^^^^^^^^^ Reading config via Python... "
            //	sh " env.txt"
	    //	sh "echo ${env.PACKER_OPTIONS}"
            echo " =========== ~~~~~~~~~~~~ ============ "
        }
    }
