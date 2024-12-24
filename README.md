# ¿Cómo funciona?

Es un script sencillo escrito en bash con el cual puedes ver información relevante de una IP, como el país y la ciudad, también si está usando algún tipo de VPN o Proxy. Puedes clonarlo y copiarlo en tu `/usr/bin`para poder escribir este comando siempre que quieras información rápida de una ip sin necesidad de entrar en Google. 

**Esta es la sintaxis:**

```shell
> ./simple_bash_scrapper.sh [IP]
```

---

# Instalación

```shell
git clone https://github.com/tarpiov/simple-bash-scrapper.git
```
### Como definirlo como comando del sistema

```shell
> chmod 755 simple_bash_scrapper.sh
> cp ./simple_bash_scrapper.sh /usr/bin/scrapper 
```
> Es importante darle permisos para poder ejecutarlo con cualquier usuario, luego lo copias con el nombre que quieras, el nombre elegido viene después de la ruta `/usr/bin`. Tanto el nombre como los permisos pueden ser modificados a tu gusto personal. Tampoco es necesario copiarlo con la extensión .sh, asi se hace mas fácil el escribirlo
