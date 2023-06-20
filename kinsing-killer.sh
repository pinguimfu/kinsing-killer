#!/bin/bash
#vacina contra lnx mallware kinsing - php bitcoin minner by Pinguimfu
#procura e mata os processos
kill $(pgrep kdevtmp)
kill $(pgrep kinsing)
# procura e mata todos os arquivos do virus
find / -iname kdevtmpfsi -exec rm -fv {} \;
find / -iname kinsing -exec rm -fv {} \;
# remove seus arquivos temporarios
rm /tmp/kdevtmp*
rm /tmp/kinsing*
# cria arquivos vazios no lugar
touch /tmp/kdevtmpfsi && touch /var/tmp/kinsing
echo "tudo limpo" > /tmp/kdevtmpfsi
echo "tudo limpo" > /var/tmp/kinsing
touch /tmp/zzz
echo "tudo limpo" > /tmp/zzz
# trava os arquivos como somente leitura
chmod go-rwx /var/tmp
chmod 1777 /tmp
echo "verifique seus cronjobs manualmente para evitar re-infeccao"
