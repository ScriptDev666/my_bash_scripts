#!/bin/bash

#Это скрипт, который выводит дату, время, список зарегистрировавшихся пользователей, и uptime системы и сохраняет эту информацию в системном журнале.

date &>>/var/log/systemInfo_ver1.log
users &>>/var/log/systemInfo_ver1.log
uptime &>>/var/log/systemInfo_ver1.log
