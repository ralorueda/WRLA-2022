timeout 21600 maude ../../native-narrowing.maude ../../experimental-modules/xor-protocol.maude ./row1.maude  > ./outputs/xor-protocol-row1.txt & disown
sleep 2
timeout 21600 maude ../../canonical-narrowing.maude ../../experimental-modules/xor-protocol.maude ./row2.maude  > ./outputs/xor-protocol-row2.txt & disown
sleep 2
timeout 21600 maude ../../canonical-narrowing.maude ../../experimental-modules/xor-protocol.maude ./row3.maude  > ./outputs/xor-protocol-row3.txt & disown