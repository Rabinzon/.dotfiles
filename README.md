### This is my initial configurations for Ubuntu.
![pizza.png](http://s13.postimg.org/e1yuvjwpj/pizza.png)
#### How to run it:
```sh
$ sudo apt-get update
$ sudo apt-get install ansible
$ sudo apt-get install git 
$ git clone git@github.com:Rabinzon/.dotfiles.git
$ cd .dotfiles
$ sudo ansible-playbook setup.yml
```
One line command:
`sudo apt-get update && sudo apt-get install ansible git && git clone git@github.com:Rabinzon/.dotfiles.git && cd .dotfiles && sudo ansible-playbook setup.yml `
