#!/bin/bash
#	$Id$
#
# Description:

R=9/20/-2/2
J=X15c/5c
B=1
PS=pssac_W.ps

gmt pssac seis.sac -R$R -J$J -B$B -BWSen -W2p,red,- -K -P > $PS
gmt pssac seis.sac -R$R -J$J -B$B -BWsen -W1p -K -O -Y6c >> $PS
gmt pssac seis.sac -R$R -J$J -B$B -BWsen -Wblue -K -O -Y6c >> $PS
gmt pssac seis.sac -R$R -J$J -B$B -BWsen -W. -K -O -Y6c >> $PS
gmt psxy -R$R -J$J -T -K -O >> $PS