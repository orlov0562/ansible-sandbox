# просмотр всех модулей команд ansible

```
ansible-doc -l
```

# отладка ansible
```
ansible all -m shell -a "pwd" -v
ansible all -m shell -a "pwd" -vv
ansible all -m shell -a "pwd" -vvv
ansible all -m shell -a "pwd" -vvvv
```
# просмотр конфигурация inventory
```
ansible-inventory --list
ansible-inventory --graph
```
# проверка соединения с серверами
```
ansible all -m ping
```
# просмотр параметров конфигурации серверов
```
ansible all -m setup
```
# выполнение комманд
```
ansible all -m shell -a "pwd"

ansible all -m command -a "pwd"      # в command нельзя использовать перенаправления и пайплайны
```
# копирование файла с мастер машины
# -b = выполнить через sudo
```
ansible all -m copy -b -a "src=test-file.txt dest=/root/tmp/ mode=0644"
```
# удаление файла
```
ansible all -m file -a "path=/root/tmp/test-file.txt state=absent"
```
# скачать файл
```
ansible all -m get_url -a "url=http://www.ovh.net/files/1Mb.dat dest=/root/tmp/"
```
# установка программ
```
ansible all -m yum -a "name=mc state=installed"
ansible all -m yum -a "name=mc state=latest"
```
# удаление программ
```
ansible all -m yum -a "name=mc state=removed"
```
# получить заголовки соединения с url
```
ansible all -m uri -a "url=http://www.ovh.net/files/1Mb.dat"
```
# получить заголовки соединения с url И КОНТЕНТ
```
ansible all -m uri -a "url=https://md5calc.com/ip.plain return_content=yes"
```
# установка Apache
```
ansible all -m yum -a "name=httpd state=latest"
```
# управление сервисами
```
ansible all -m service -a "name=httpd state=started enabled=yes"
ansible all -m service -a "name=firewalld state=stopped"
```
# Запуск playbook
```
ansible-playbook pb/ping.yml
```
