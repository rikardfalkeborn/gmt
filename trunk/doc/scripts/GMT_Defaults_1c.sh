#!/bin/sh
#	$Id: GMT_Defaults_1c.sh,v 1.9 2005-10-13 22:16:02 pwessel Exp $
#
../../bin/gmtset BASEMAP_TYPE plain PLOT_DATE_FORMAT "o dd" PLOT_CLOCK_FORMAT hh ANNOT_FONT_SIZE_PRIMARY +8p
../../bin/psbasemap -R2001-9-11T/2001-9-13T/0.01/100 -JX2.25T/2.25l -Bpa6Hf1hg6h:"x-axis label":/a1g3p:"y-axis label":WSne \
	-Bsa1D -P -K -U/-0.75/-0.85/"Dazed and Confused" --TIME_LANGUAGE=pt > GMT_Defaults_1c.ps
../../bin/pstext -R0/2.25/0/2.25 -Jx1i -O -K -N << EOF >> GMT_Defaults_1c.ps
0.6 2.4 7 0 1 RB X_AXIS_LENGTH
-0.4 2.1 7 0 1 RM Y_AXIS_TYPE
-0.4 1.9 7 0 1 RM BASEMAP_AXES
-0.4 0.25 7 0 1 RM Y_AXIS_LENGTH
-0.9 -0.3 7 0 1 LB UNIX_TIME_POS
0 -0.6 7 0 1 CB UNIX_TIME
2 -0.55 7 0 1 LM LABEL_FONT
2 -0.65 7 0 1 LM LABEL_FONT_SIZE
2.35 0.9 7 0 1 LB PLOT_DATE_FORMAT
2.35 0.6 7 0 1 LB PLOT_CLOCK_FORMAT
2.35 0.3 7 0 1 LB TIME_LANGUAGE
2.4 -0.25 7 0 1 LM ANNOT_FONT_SECONDARY
2.4 -0.35 7 0 1 LM ANNOT_FONT_SIZE_SECONDARY
EOF
../../bin/psxy -R -Jx -O -Svs0.005i/0.04i/0.03i -N -Gblack << EOF >> GMT_Defaults_1c.ps
0.65 2.4 0.9 2.3
-0.35 2.1 -0.05 2.1
-0.35 1.9 -0.05 1.9
-0.35 0.25 -0.05 0.25
-0.9 -0.3 -0.75 -0.85
2.35 -0.25 2.1 -0.26
2.35 -0.35 2.1 -0.30
1.95 -0.55 1.7 -0.44
1.95 -0.65 1.7 -0.5
2.3 0.9 0.66 -0.2
2.3 0.6 1.2 -0.1
2.3 0.3 1.8 -0.2
-0.3 -0.6 -0.5 -0.66
EOF
