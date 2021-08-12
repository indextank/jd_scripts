FROM node:lts-alpine3.12

LABEL AUTHOR="none" \
    VERSION=0.1.4

ARG KEY="-----BEGIN OPENSSH PRIVATE KEY-----\nb3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAABFwAAAAdzc2gtcn\nNhAAAAAwEAAQAAAQEA3fbne+T/YEs42IRHu1gRKGf1tBwQhTpEEeaZNMTM245FaC5VOpmG\nuKiTHZHMYFk0ya36q8RDFe/Av2KtIJr67e6baskIVKUE4QiYmda+o/6SpsDFUK6WsGgkQ0\nhFqk3vQ7alPxXYRPRZ41qmZ1CzqdpGzcvrbBZxu1c+vZO2lwcx39mhuemsu5KMBa3mKpBJ\ni2qkoOMi8U9XsCCdGcLMe8bKihkuuI3jdImp7lT/hy64CwSdK+ztf97T2ntvseGGZpnQH+\nm9118w3rVTJiiNSypBSIYDs9SiUJYgslQpwt2kLllSoNqrUhoNzaz0H9987DJt0KlEnRSQ\ne3q3gHl11QAAA8jgMQn74DEJ+wAAAAdzc2gtcnNhAAABAQDd9ud75P9gSzjYhEe7WBEoZ/\nW0HBCFOkQR5pk0xMzbjkVoLlU6mYa4qJMdkcxgWTTJrfqrxEMV78C/Yq0gmvrt7ptqyQhU\npQThCJiZ1r6j/pKmwMVQrpawaCRDSEWqTe9DtqU/FdhE9FnjWqZnULOp2kbNy+tsFnG7Vz\n69k7aXBzHf2aG56ay7kowFreYqkEmLaqSg4yLxT1ewIJ0Zwsx7xsqKGS64jeN0ianuVP+H\nLrgLBJ0r7O1/3tPae2+x4YZmmdAf6b3XXzDetVMmKI1LKkFIhgOz1KJQliCyVCnC3aQuWV\nKg2qtSGg3NrPQf33zsMm3QqUSdFJB7ereAeXXVAAAAAwEAAQAAAQA0dmEsNWnu1pivBET4\nEM6tYDUAxwlYk/b2zCw1/rX0xuG8yAa4/QSMrLto58cIls0VRhvTcWXxz2MdWTNWW4snpZ\nfyW2Wuq/pFPgTjh5Azrr32z+VTNpDDTToU9QYSRK1isc7I5F7jnWWJiSl/jeGJKeBGUAZq\n27sx7mMT58/mTgo0XoNhJ8d/7zXiQuawre6X9Urz6WfjU2t2a3hWplulwxuDlPdPh0QNY8\n/Skg2NwgAG736oAwIWHCVjwFrtpU+F5JZWhe1+tHnfqI3Kexb1zPCYiRYk7mC3vnwbDhqL\ngrHDEF71SqnyaumWXtgGTLSGo5fSMZl3VZckwYFZCNZBAAAAgQDKRrjMLdsY53KJHZHtQ2\nkaINfI9tkEqPLO8cC0i5gyFPIHMqJk3a3liVHoNz8WaqiXzJL/+ZbbpeJO/tyqh87B8Hsc\nF0mPLJRwtIbnc1OiVrbgkYilee0Tn0AAptqVH+MtL0GKL97io1pqVM23NmZeyKoMf3fS75\nQcTkSuhSqcogAAAIEA+vcsooSVa3utN1GzBECUzcFrk2FC4Vuak8eilgFFLZi37viQq7D/\ndOmedhuEnkd1v3jkg2G0quq7taXhuGJdEHoTHcOrSWomelO+Hg+mPYA+OMSt3CMTYxiNWR\nyXPtk4QJxNFUkQSv5JlDBbqrsjTQNEM1I4JVBpjvP8KqPX3H0AAACBAOJqy72rJV/DRabq\ngWUT2djWMev6LKvOkdj/vyF4bwoC+a6rmsaVNumwgL/24KPjWFvhoI3AAwJXSkL+7PeAKx\nj1FdCeepys6pCYWGTdxkdyzYSsRi2/BXE6GMexEd831JGE23PBNGRGpRNbzFax+CH43EXV\ntoHiBQk5m//QMzY5AAAAEnJvb3RAZG91eWluLXNlcnZlcg==\n-----END OPENSSH PRIVATE KEY-----"

ENV DEFAULT_LIST_FILE=crontab_list.sh \
    CUSTOM_LIST_MERGE_TYPE=append \
    COOKIES_LIST=/scripts/logs/cookies.list \
    REPO_URL=git@github.com:indextank/jd_scripts.git \
    REPO_BRANCH=main

RUN sed -i "s/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g" /etc/apk/repositories && \
    apk update && apk add --no-cache tzdata

RUN set -ex \
    && apk update \
    && apk upgrade \
    && apk add --no-cache bash tzdata git moreutils curl jq openssh-client pkgconfig python3 \
    && rm -rf /var/cache/apk/* \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && mkdir -p /root/.ssh \
    && echo -e $KEY > /root/.ssh/id_rsa \
    && chmod 600 /root/.ssh/id_rsa \
    && ssh-keyscan github.com > /root/.ssh/known_hosts \
    && git clone -b $REPO_BRANCH $REPO_URL /scripts \
    && cd /scripts \
    && rm -fr *.js *.ts \
    && mkdir logs \
    && npm config set registry https://registry.npm.taobao.org \
    && npm install \
    && npm install ts-node png-js date-fns \
    && npm install -g ts-md5 dotenv \
    && npm install -g typescript \
    && npm install axios --save \
    && cp /scripts/docker/get-pip.py . \
    && python3 get-pip.py \
    #&& curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3 get-pip.py \
    && pip install -i https://pypi.tuna.tsinghua.edu.cn/simple requests rsa \
    && cp /scripts/docker/docker_entrypoint.sh /usr/local/bin \
    && chmod +x /usr/local/bin/docker_entrypoint.sh

WORKDIR /scripts

ENTRYPOINT ["docker_entrypoint.sh"]

CMD [ "crond" ]