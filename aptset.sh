#!/bin/bash
#apt proxy setting
if [ "$1" == "proxy" ] 
then
  echo 'Acquire::http::Proxy "http://seno11@mhs.ep.its.ac.id:123456@proxy.its.ac.id:8080";' >> /etc/apt/apt.conf
  echo 'Acquire::https::Proxy "https://seno11@mhs.ep.its.ac.id:123456@proxy.its.ac.id:8080";' >> /etc/apt/apt.conf
  echo 'Acquire::ftp::Proxy "ftp://seno11@mhs.ep.its.ac.id:123456@proxy.its.ac.id:8080";' >> /etc/apt/apt.conf
  echo 'APT::Install-Recommends "true";' >> /etc/apt/apt.conf.d/00recommends
  echo 'APT::Install-Recommends "true";' >> /etc/apt/apt.conf
  elif [ "$1" == "" ] 
then
  echo '' > /etc/apt/apt.conf.d/00recommends
  echo '' > /etc/apt/apt.conf
fi
