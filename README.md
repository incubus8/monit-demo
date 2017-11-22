
## Monit Demo

### Monit Installation

Before we can run monit, you need to have `monit` / executable file in binary format in your own local machine. The following are installation in different platforms:

#### Easy Install for MacOS via Brew
1. `brew install monit`

#### Monit Setup for other than MacOS

1. Download monit from https://mmonit.com/monit/
2. Extract `monit-5.xx-x` folder. 
3. Go to folder / type `cd` to that folder
4. Now, setup `PATH` to access monit directly

### Using .monitrc

Monit will use `.monitrc` file configuration to control their services and what monit should check. To use this configuration demo, you need to pull this repository. 
So, in another folder do the following:

```shell
$ git clone git@github.com:incubus8/monit-demo.git
$ cd monit-demo
$ chmod 0700 .monitrc # <--- important!
$ monit -c .monitrc
```

If success, monit daemon will be up and running in your machine. You should be able to see web UI in [127.0.0.1:2812](127.0.0.1:2812)

### See monit log

```shell
$ tail -f .monit.log 
```

#### Reloading Monitrc

Each time you change `.monitrc` file, you need to restart / reload your monit daemon to reflect configuration changes that you made. Type:

```shell
$ monit reload -c .monitrc
```

#### Other Monit Operations

You can find other monit operations in their manual. 

```shell
$ man monit       # or .... 
$ monit --help 
```

#### Checking Successful Services

This demo will be equiped with one program to check `google.com` if it contains specific word depending on `check-bi.sh` script and the other http monit UI running on port 2812. 

You should see the following when you do `monit status`

```shell
➜ monit status
Monit 5.25.1 uptime: 31m

Program 'check-bi'
  status                       OK
  monitoring status            Monitored
  monitoring mode              active
  on reboot                    start
  last exit value              0
  last output                  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                                                Dload  Upload   Total   Spent    Left  Speed
                                 0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0100   271  100   271    0     0   3891      0 --:--:-- --:--:-- --:--:--  3927
                               100 12872    0 12872    0     0  26541      0 --:--:-- --:--:-- --:--:-- 26541
                               })();</script><div id="mngb"> <div id=gbar><nobr><b class=gb1>Telusuri</b> <a class=gb1 href="http://www.google.co.id/imghp?hl=id&tab=wi">Gambar</a> <a class=gb1 href="http://maps.google.co.id/maps?hl=
  data collected               Wed, 22 Nov 2017 22:53:16

System 'incubus8-it.local'
  status                       OK
  monitoring status            Monitored
  monitoring mode              active
  on reboot                    start
  load average                 [2.03] [2.62] [2.97]
  cpu                          12.3%us 8.1%sy
  memory usage                 5.2 GB [65.0%]
  swap usage                   5.3 GB [88.3%]
  uptime                       39d 14h 26m
  boot time                    Sat, 14 Oct 2017 08:26:57
  data collected               Wed, 22 Nov 2017 22:53:16
```

### Author

Rheza Satria (c) 2017
