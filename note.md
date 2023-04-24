#### 服务器
ssh root@193.203.215.185 -p 2221
SavourDaoChaineye123
542432314chenjh


hoquemereamf@outlook.dk

lmeRkR41
lmeRkR41

#### 记录
;port=127.0.0.1:9001        ; (ip_address:port specifier, *:port for all iface)
;username=admin              ; (default is no username (open server))
;password=123123qq!@

→ supervisorctl status all # =supervisorctl status，查看所有服务状态
→ supervisorctl status serverName # 查看指定服务的状态
→ supervisorctl update # =supervisorctl update all，新加的.ini结尾的新进程(组)，update添加进来
→ supervisorctl start/stop/restart serverName # 启动/停止服务(组)
→ supervisorctl start/stop/restart all # 启动/关闭所有服务(组)
→ supervisorctl reload # 重新加载所有服务——重启，如果有新添加的服务也会直接加进来并启动
→ supervisorctl pid # 查看supervisord进程的pid
→ supervisorctl pid serverName # 查看子进程的pid
→ supervisorctl pid all # 查看所有子进程的pid
→ supervisorctl reread # 重新加载已添加服务的configuration配置内容，但是不会重启，也不会自动添加新进程/移除进程，和reload不同
→ supervisorctl fg serverName # 进入子进程的交互模式，Ctrl + C退出，个人觉得不是很好用
→ supervisorctl clear all/serverName # 清除进程的log文件

---- supervisior------
/root/skyeye/venv/bin/python3 manage.py runserver 0.0.0.0:8081
/root/hailstone/venv/bin/python3 runserver 0.0.0.0:8080

/root/skyeye/venv/bin/python3 manage.py broker_crawler crawler_fetch_orderbooks
/root/skyeye/venv/bin/python3 manage.py price_rpcserver
savour-hd -c ./config.yml

---- crontab 3s 执行一次------
/root/skyeye/venv/bin/python3 /root/skyeye/manage.py  mg_ob_persistence
/root/skyeye/venv/bin/python3 /root/skyeye/manage.py  otc_asset_price
/root/hailstone/venv/bin/python3 /root/hailstone/manage.py  clear_market_history_price
/root/hailstone/venv/bin/python3 /root/hailstone/manage.py fetch_market_price
