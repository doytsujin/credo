#!/dis/sh
stepfile = $1
ifs = '/
'
(project procedure stepname) = `{sed -n '1p' $stepfile | sed 's,^# ,,;s, - ,/,g'}
ifs = ' 	
'
if {os -T ectool getStep $"project $"procedure $"stepname | sed 's,
	echo $stepfile
} {
	rm -f $stepfile $stepfile^.sum
}