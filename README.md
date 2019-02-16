## Automate testing Selenium
  > ถ้า install ไม่ผ่าน ให้ใส่ sudo

``` bash
# Install python-pip #2
$ sudo apt install python-pip

# Install virtual env virtual
$ sudo pip install virtualenvwrapper

go to project path

# Create env
$ mkvirtualenv -p python2.7 &{env-name}
  mkvirtualenv -p python2.7 robot-env
or
$ python -m virtualenv &{env-name}
  python -m virtualenv robot-env

# Activate virtualenv (access to env)
$ source ${path virtualenv}
  source robot-env/bin/activate

# Show library list
$ pip list

# Install library
$ pip install robotframework (Robot Framework)
$ pip install robotframework-seleniumlibrary (Selenium)

$ pip install -r ${requirement.txt}
* requirement.txt คือไฟล์ที่รวบรวม library ไว้ install ครั้งเดียว คล้ายไฟล์ .yaml
```

## Install Browser Driver
``` bash
# Chrome (version ต้องตรงตาม chrome ที่ใช้ ดูได้จาก http://chromedriver.chromium.org/downloads)
$ wget https://chromedriver.storage.googleapis.com/${version}/chromedriver_linux64.zip
$ unzip chromedriver_linux64.zip
$ sudo mv chromedriver /usr/bin/chromedriver
$ sudo chown root:root /usr/bin/chromedriver
$ sudo chmod +x /usr/bin/chromedriver

*** ถ้า install ไม่ผ่าน ให้โหลดไฟล์มา แล้วเอาไปใส่ใน /usr/local/bin


https://robotframework.org/#introduction

```






