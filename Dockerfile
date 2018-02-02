ARG DIST_TAG=xenial 
FROM i386/ubuntu:$DIST_TAG

RUN apt-get update && \
    apt-get install -y make git texlive-full texlive-latex-extra texlive-lang-czechslovak && \
    apt-get clean

# ADD /build /build
# WORKDIR /build

ENV THREADS=2

ARG DIST_TAG
ENV DIST_TAG $DIST_TAG

ENV DIST_VER=1

ENTRYPOINT latex -v && \
	rm -rf output/* && \
	mkdir output/html && \
	mkdir output/pdf && \
	git clone https://github.com/RoboticsBrno/RobotikaBrno-guides.git && \
	cd RobotikaBrno-guides && \
	git checkout RoboticsManual && \
	cd RoboticsManual && \
	make && \
	cp _html ../../output && \
	cd .. && \
	cd .. && \
	pwd && \
	ls -la /output && \
	echo "Finish"

VOLUME /output
