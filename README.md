# 도커 컴포즈 설정을 위한 파이썬/Django 샘플 프로젝트

## 주의사항
    폴더 권한으로 인해 로그폴더 및 static취합폴더를 미리 만들어야 함.
    또는 docker 생성 파일 내에서 만들 경우 사용자 권한 처리를 해줘야 함.(확인 필요)


이하 단순 참고사항 샘플
* * *
* * *


### 요약

```
$ git clone https://github.com/raccoonyy/django-sample-for-docker-compose.git
$ cd django-sample-for-docker-compose
$ docker-compose up
```

### 요구조건

- 도커 엔진 : 1.12.0 이상
- 도커 컴포즈 : 1.6.0 이상

### 실행

1. 저장소 클론

```
$ git clone https://github.com/raccoonyy/django-sample-for-docker-compose.git
```

2. 소스 디렉터리로 이동

```
$ cd django-sample-for-docker-compose
```

3. 컴포즈로 서비스 실행

```
$ docker-compose up
```

### 도커 컴포즈 구성

- docker-compose.yml

도커 컴포즈 명령(`docker-compose`) 실행시 참고하는 설정 모음

- compose/django/Dockerfile-dev

개발용 컨테이너를 만들기 위한 Dockerfile (배포용 Dockerfile과 살짝 다름)
#drone


# Docker Commands

```
docker rm은 컨테이너를 삭제
docker rmi는 이미지를 삭제
docker rm -f $(docker ps -a -q)
```
### To connect Django of Docoker
    docker exec -it 2acca5fecfcc bash;
    docker exec -it droneweb_django_1 bash;


### To add admin
    python manage.py createsuperuser;


# Django Commands
### To make new project
    $ django-admin startproject mysite

### To add new app
    $ python manage.py startapp <app name>
    ex) $python manage.py startapp polls

### Exception
    try:
        querysetUser = User.object.get(usesrname=userNickName)
    except Exception as ex: # 에러 종류
        print('에러가 발생 했습니다', ex)

### DB migrations
    Use webserver CLI of Docker Dashboard
    $ python manage.py makemigrations
    $ python namage.py migrate


# [Django REST framework](https://www.django-rest-framework.org/api-guide/fields/)
    IntegerField(max_value=None, min_value=None)


# [httpie](https://github.com/jakubroztocil/httpie#regular-forms)

### ex) POST
    http --form POST http://nexbrain.iptime.org:7000/game/PlayLog/ playData="홍길동|2|3|4|1|200|0|1"


# Server Info
## base directory
    chdir = /home/nexbrain/droneWeb       
## Python path
    home = /usr/bin/python
## Apache2 set
    /etc/apache2/sites-available
## Apache2 log
    /var/log/apache2
## To check port
    netstat -pna | grep 8000
## To stop Docker-proxy
    service docker stop
## To check opend port
    netstat -tnlp
    nmap localhost
    fuser 8080/tcp
    fuser -k 8080/tcp
## To setting
    python -m venv myvenv
    source myvenv/bin/activate
## To view log
    tail -n 20 filename.log
    tail -f /toSaveLocation/folder/
    tail -f error.log | grep '특정단어'
## To check Unicorn working
    ps ax|grep gunicorngrep -c 


## To remove apache2
    sudo apt-get --purge remove apache2

## To change owner
    sudo chown -R nexbrain:nexbrain config

# Docker Error
## signaling init process caused "permission denied"
    -> sudo service docker restart



## To gether static file
    python manage.py collectstatic


# Temp
docker exec -it droneweb_django_1 bash;
ps ax|grep gunicorngrep -c;