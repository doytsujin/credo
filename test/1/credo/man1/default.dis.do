#!/dis/sh
dis = $1
b = `{echo $dis | sed 's,\.dis,.b,'}
limbo $b
