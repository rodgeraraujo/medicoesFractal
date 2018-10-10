1 - configurações globais -> gerenciador redes hospedeiro -> criar

2 - sudo su
3 - ifconfig

DUT: 10.0.3.121
4 - ifconfig eth0 198.168.56.105
5 - ifconfig
6 - ping 198.168.56.106 
7 - lxc-start -n router1 -d 
8- lxc-attach -n router1 
9- cd root rou
10- mkdir fernanda_lxc
10 - cd fernanda_lxc
11 - mkdir PRO_1000_T_SERVER
12 - cd PRO_1000_T_SERVER


DOCKER:
10- mkdir fernanda_lxc
10 - cd fernanda_lxc
11 - mkdir PRO_1000_T_SERVER
12 - cd PRO_1000_T_SERVER
13 - ping 10.0.3.121
11- ifconfig
12 - route add -net 10.0.3.0 netmark 255.255.255.0 gw 192.168.56.105
13 - ping 10.0.3.121
14 - iperf -s -P 0 -i 1 5001 -f k | cat > IPERF_UBUNTU14_LXC_PRO_1000_T_SERVER_120s_SERVER.txt

DUT:
15 - iperf -c 192.168.56.106 -t 120 | cat > IPERF_DOCKER_PRO_1000_T_SERVER_120s_CLIENT.txt

DOCKER:
16 - para servidor
17 - cat (tecla tab)
18 - docker start be364cb1e75f
19 - docker attach be364cb1e75f (2 enter)
20 - cd root
21 - mkdir fernanda_docker
22 - cd fernanda_docker
23 - mkdir pro_1000_t_server
24 - cd pro_1000_t_server
25 - ifconfig(172.17.0.2)

DUT:
26 - ctrl d
21 - mkdir fernanda_docker
22 - cd fernanda_docker
23 - mkdir pro_1000_t_server
24 - cd pro_1000_t_server
25 - ifconfig eth0
26 - ping 172.17.0.2
27 - route add -net 172-17.0.0 netmask 255.255.0.0 gw 192.168.56.105
28 - ping 172.17.0.2
29 - iperf -s -P 0 -i 1 -p 5001 -f k | cat > IPERF_UBUNTU14_TCP_DOCKER_PRO_100_T_SERVER_120s_server.txt

docker:
30 - iperf -c 192.168.56.106 -t 120 | cat > IPERF_UBUNTU14_TCP_DOCKER_PRO_100_T_SERVER_120s_server.txt

arquivos:
- outros locais
- (conectar servidor) ssh://192.168.56.105
- home/djr (copia pasta docker)
- (conectar servidor) ssh://192.168.56.106
- home/djr (copia lxc)

- copiar conteudo dos arquivos colar no calc com tabulação e separar por espaço
- pegar a coluna tranferencia e colar em .txt, salvar

- instalar rkward
