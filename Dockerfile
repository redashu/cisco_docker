FROM  fedora   
#   we can use  multiple FROM  instruction 
MAINTAINER  ashutoshh@linux.com , 9509957594 
#  for uses who want to connect with me regarding any issues 
RUN  dnf install   httpd  net-tools  git -y ;  touch  /okk.txt 
#  net-tools  for  installing  ifconfig command in fedora image 
#  More than one  RUN  instruction  you can give --every run instrction will create a new layer in image
COPY  index.html  docker.jpg   /var/www/html/
#  copy will take data from  current folder only that is local system folder 
#  if your data  is in url  then you can use  ADD  instruction 
#ADD  url   /var/www/html/
EXPOSE  80 
#  to add port  with docker image  that you can use with run time container 
ENTRYPOINT   httpd  -DFOREGROUND
#  this will be  default  command  while creating container  in max cases you can't replace this command
