timeout 21600 maude ../../native-narrowing.maude ../../experimental-modules/narrowing-vending-machine.maude ./row10.maude  > ./outputs/narrowing-vending-machine-row10.txt & disown
sleep 2
timeout 21600 maude ../../canonical-narrowing.maude ../../experimental-modules/narrowing-vending-machine.maude ./row11.maude  > ./outputs/narrowing-vending-machine-row11.txt & disown
sleep 2
timeout 21600 maude ../../canonical-narrowing.maude ../../experimental-modules/narrowing-vending-machine.maude ./row12.maude  > ./outputs/narrowing-vending-machine-row12.txt & disown
