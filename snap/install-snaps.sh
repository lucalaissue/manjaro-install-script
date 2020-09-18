# Snap
while read p; do
    snap install $p
done <snapsofts

while read p; do
    snap install $p --classic
done <snapsoftsclassic
