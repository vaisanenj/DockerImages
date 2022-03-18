#Base image to use
FROM pihole/pihole:2022.02.1

#Expose needed ports
EXPOSE 53 53/udp
EXPOSE 67/udp
EXPOSE 80

#Add own pihole blocklists directly
RUN  sqlite3 /etc/pihole/gravity.db "INSERT INTO adlist (address, enabled, comment) VALUES ('https://blocklistproject.github.io/Lists/ads.txt', 1, 'From DockerFile');"  && \
    sqlite3 /etc/pihole/gravity.db "INSERT INTO adlist (address, enabled, comment) VALUES ('https://gist.githubusercontent.com/anudeepND/adac7982307fec6ee23605e281a57f1a/raw/5b8582b906a9497624c3f3187a49ebc23a9cf2fb/Test.txt', 1, 'From DockerFile');"  &&  \
    sqlite3 /etc/pihole/gravity.db "INSERT INTO adlist (address, enabled, comment) VALUES ('https://github.com/Ewpratten/youtube_ad_blocklist/blob/master/blocklist.txt', 1, 'From DockerFile');"  &&  \
    sqlite3 /etc/pihole/gravity.db "INSERT INTO domainlist (type, domain, enabled, comment) VALUES (3, '^ad([sxv]?[0-9]*|system)[_.-]([^.[:space:]]+\.){1,}|[_.-]ad([sxv]?[0-9]*|system)[_.-]', '1', 'From DockerFile');"  &&  \
    sqlite3 /etc/pihole/gravity.db "INSERT INTO domainlist (type, domain, enabled, comment) VALUES (3, '^(.+[_.-])?adse?rv(er?|ice)?s?[0-9]*[_.-]', '1', 'From DockerFile');"  &&  \
    sqlite3 /etc/pihole/gravity.db "INSERT INTO domainlist (type, domain, enabled, comment) VALUES (3, '^(.+[_.-])?telemetry[_.-]', '1', 'From DockerFile');"  &&  \
    sqlite3 /etc/pihole/gravity.db "INSERT INTO domainlist (type, domain, enabled, comment) VALUES (3, '^adim(age|g)s?[0-9]*[_.-]', '1', 'From DockerFile');"  &&  \
    sqlite3 /etc/pihole/gravity.db "INSERT INTO domainlist (type, domain, enabled, comment) VALUES (3, '^adtrack(er|ing)?[0-9]*[_.-]', '1', 'From DockerFile');"  &&  \
    sqlite3 /etc/pihole/gravity.db "INSERT INTO domainlist (type, domain, enabled, comment) VALUES (3, '^advert(s|is(ing|ements?))?[0-9]*[_.-]', '1', 'From DockerFile');"  &&  \
    sqlite3 /etc/pihole/gravity.db "INSERT INTO domainlist (type, domain, enabled, comment) VALUES (3, '^aff(iliat(es?|ion))?[_.-]', '1', 'From DockerFile');"  &&  \
    sqlite3 /etc/pihole/gravity.db "INSERT INTO domainlist (type, domain, enabled, comment) VALUES (3, '^analytics?[_.-]', '1', 'From DockerFile');"  &&  \
    sqlite3 /etc/pihole/gravity.db "INSERT INTO domainlist (type, domain, enabled, comment) VALUES (3, '^banners?[_.-]', '1', 'From DockerFile');"  &&  \
    sqlite3 /etc/pihole/gravity.db "INSERT INTO domainlist (type, domain, enabled, comment) VALUES (3, '^beacons?[0-9]*[_.-]', '1', 'From DockerFile');"  &&  \
    sqlite3 /etc/pihole/gravity.db "INSERT INTO domainlist (type, domain, enabled, comment) VALUES (3, '^count(ers?)?[0-9]*[_.-]', '1', 'From DockerFile');"  &&  \
    sqlite3 /etc/pihole/gravity.db "INSERT INTO domainlist (type, domain, enabled, comment) VALUES (3, '^mads\.', '1', 'From DockerFile');"  &&  \
    sqlite3 /etc/pihole/gravity.db "INSERT INTO domainlist (type, domain, enabled, comment) VALUES (3, '^pixels?[-.]', '1', 'From DockerFile');"