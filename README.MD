## 1.0 Iniciando com django

    Projeto do video: https://www.youtube.com/watch?v=LEZcT0nMnYo

    Importante saber o o django é um framwork fullstack MVC

    Observação importante: Na arquitetura MVC do django, o View chama-se templates e o Controller chama-se view, o model chama-se model mesmo.


### 1.1 Passos:

    1. criado arquivo docker-compose 

    2. criado dockerfile

    3. roda docker-compose up

    4. alterado configuracao do banco de dados no arquivo iniciando_com_django/settings.py linha 76

    5. rodar a migracao  
```python
python manage.py migrate
```
    6. criar aplicacao app com django-admin 
```python 
django-admin startapp app 
```

    7. adicionado aplicacao no settings.py na linha 33 em INSTALLED_APPS

    8. criado a classe Category no models

    9. executado os comandos abaixo para o ORM do python refletir a mudança:
```python
   python manage.py migrate 
   python manage.py makemigrations
```
    10. criado um registro:

    10.1 no shell:
```python 
python manage.py shell 

>>> from app.models import Category
>>> Category.objects.create(name='verduras')
>>> Category.objects.all()

```