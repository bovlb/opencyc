# Opencyc

https://github.com/bovlb/opencyc

This is a dockerization of OpenCyc, intended to make it easier to run.

To run OpenCyc, try a command like:

    docker run -p3602:3602 -d -it --name=opencyc bovlb/opencyc

This will run the image detached, so omit the `-d` to run attached and gain access to the CYC prompt.

The Knowledge Browser is accessible at http://localhost:3602/cgi-bin/cyccgi/cg?cb-start

:warning: Note that this image requires at least 3GB just to start up.  Many Docker installations limit images to 2GB by default, so you may need to tweak your settings.  This is probably what the problem is if your logs (`docker logs opencyc`) ends with a line like:

    bin/cyc-runner.sh: line 266:   123 Killed

After increasing memory, rerun the image using `docker start opencyc`.

Thanks to asanchez75 (https://github.com/asanchez75/opencyc) and everyone at Cycorp (https://www.cyc.com/).

This repo contains an OpenCyc tarball that was released under the OpenCyc Licence.  See the legal notices included inside the tarball for more details.

Be aware that OpenCyc is a somewhat-old subset of full Cyc.  You should not judge the power of today's Cyc by this offering.  Contact Cycorp directly (info@cyc.com) to license Cyc for research (ResearchCyc) or commercial (EnterpriseCyc) purposes.
