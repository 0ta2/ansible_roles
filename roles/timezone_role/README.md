[![GitHub issues](https://img.shields.io/github/issues/0ta2/timezone_role)](https://github.com/0ta2/timezone_role/issues)
[![GitHub stars](https://img.shields.io/github/stars/0ta2/timezone_role)](https://github.com/0ta2/timezone_role/stargazers)
![GitHub Actions](https://github.com/0ta2/timezone_role/workflows/Molecule%20Test/badge.svg)

timezone_role
=========

サーバのタイムゾーンを設定するロールです。

Requirements
------------

特になし。

Role Variables
--------------

| 変数名   | 役割               |
|----------|--------------------|
| timezone | タイムゾーンを指定 |

__※デフォルトでは、Asia/Tokyoになっています。__

Dependencies
------------

特になし

Example Playbook
----------------

```
---
    - hosts: servers
      roles:
         - { role: 0ta2.timezone_role }
```

License
-------

![GitHub](https://img.shields.io/github/license/0ta2/motd-role)
