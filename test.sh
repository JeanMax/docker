#!/bin/bash -x

dir=00_how_to_docker
for i in {00..34}; do
	./$dir/$i |& tee $dir/$i.log
done

dir=01_dockerfiles
for i in ex{00..03}; do
	docker build -t $i $dir/$i |& tee $dir/$i/build.log
	echo "docker run -it $i" > $dir/$i/run.sh
	chmod 755 $dir/$i/run.sh
done
