java -Xmx12G \
	-Dskip.classpath=false \
	-Dskip.transformation=false \
	-Dlocal.maven.repository.path=/home/joseph/.m2/repository \
	-Dfail.on.severe.conflicts=true \
      	-Drepo.root=/home/joseph/src/geomesa \
	-Drepo.url=git@github.com:jef5ez/geomesa.git \
	-jar /home/joseph/src/exodus/bazel-bin/migrator/wix-bazel-migrator/migrator_cli_deploy.jar

