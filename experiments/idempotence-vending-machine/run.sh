timeout 21600 maude ../../native-narrowing.maude ../../experimental-modules/idempotence-vending-machine.maude ./row1.maude  > ./outputs/idempotence-vending-machine-row1.txt & disown
sleep 2
timeout 21600 maude ../../canonical-narrowing.maude ../../experimental-modules/idempotence-vending-machine.maude ./row2.maude  > ./outputs/idempotence-vending-machine-row2.txt & disown
sleep 2
timeout 21600 maude ../../canonical-narrowing.maude ../../experimental-modules/idempotence-vending-machine.maude ./row3.maude  > ./outputs/idempotence-vending-machine-row3.txt & disown
sleep 2
timeout 21600 maude ../../native-narrowing.maude ../../experimental-modules/idempotence-vending-machine.maude ./row4.maude  > ./outputs/idempotence-vending-machine-row4.txt & disown
sleep 2
timeout 21600 maude ../../canonical-narrowing.maude ../../experimental-modules/idempotence-vending-machine.maude ./row5.maude  > ./outputs/idempotence-vending-machine-row5.txt & disown
sleep 2
timeout 21600 maude ../../canonical-narrowing.maude ../../experimental-modules/idempotence-vending-machine.maude ./row6.maude  > ./outputs/idempotence-vending-machine-row6.txt & disown
sleep 2
timeout 21600 maude ../../native-narrowing.maude ../../experimental-modules/idempotence-vending-machine.maude ./row7.maude  > ./outputs/idempotence-vending-machine-row7.txt & disown
sleep 2
timeout 21600 maude ../../canonical-narrowing.maude ../../experimental-modules/idempotence-vending-machine.maude ./row8.maude  > ./outputs/idempotence-vending-machine-row8.txt & disown
sleep 2
timeout 21600 maude ../../canonical-narrowing.maude ../../experimental-modules/idempotence-vending-machine.maude ./row9.maude  > ./outputs/idempotence-vending-machine-row9.txt & disown