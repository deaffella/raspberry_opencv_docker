# raspberry_opencv_docker
___

В данном репозитории содержатся инструкции для сборки docker образа с 
`python3.8` и `opencv-contrib-4.8.0` для `raspbian-bullseye-aarch64`.

___
### Билд контейнера

Для поднятия контейнера необходимо из корневой папки проекта запустить bash скрипт:

```bash
sudo bash build_project.sh
```

___
### Подключение к контейнеру

Для подключения к существующей сессии bash внутри контейнера необходимо выполнить команду:

```bash
sudo docker attach csrt_algo
```

Для создания сессии bash внутри контейнера необходимо выполнить команду:

```bash
sudo docker exec -it csrt_algo bash
```
