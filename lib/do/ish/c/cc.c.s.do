#!/dis/sh
s = $1
(stem ext c) = `{crext c $s}

if {no $cc} {cc = cc}
if {
	flag x  +
	os -d $osdir $cc $cflags $cppflags -S $c
} {
	echo $s
}
