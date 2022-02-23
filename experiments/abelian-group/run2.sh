timeout 21600 maude ../../native-narrowing.maude ../../testing-modules/abelian-group.maude ./row10.maude  > ./outputs/abelian-group-row10.txt & disown
sleep 2
timeout 21600 maude ../../canonical-narrowing.maude ../../testing-modules/abelian-group.maude ./row11.maude  > ./outputs/abelian-group-row11.txt & disown
sleep 2
timeout 21600 maude ../../canonical-narrowing.maude ../../testing-modules/abelian-group.maude ./row12.maude  > ./outputs/abelian-group-row12.txt & disown
