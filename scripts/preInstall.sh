#set env vars
set -o allexport; source .env; set +o allexport;

# docker exec itop chown -R www-data:www-data /var/www/html/conf
# docker exec itop chown -R www-data:www-data /var/www/html/extensions
# docker exec itop a2enmod ssl && a2ensite default-ssl && a2enmod alias
# docker exec itop service apache2 restart

#generate install_finish.py
# cat << 'EOF' > ./install_finish.py
# from selenium import webdriver
# from selenium.webdriver.common.keys import Keys
# from time import sleep
# from selenium.webdriver.chrome.options import Options
# from selenium.webdriver.support.ui import Select
# import time

# options = Options()
# options.headless = True
# options.add_argument("--no-sandbox")

# browser = webdriver.Chrome(executable_path="/usr/bin/chromedriver",options=options)
# browser.get('https://DOMAIN_TO_CHANGE')
# browser.maximize_window() # For maximizing window
# browser.implicitly_wait(10) # gives an implicit wait for 10 seconds


# step1 = browser.find_element_by_id("btn_next").click()

# step2 = browser.find_element_by_id("btn_next").click()

# step3 = browser.find_element_by_id("accept").click()
# step4 = browser.find_element_by_id("rgpd_consent").click()
# step5 = browser.find_element_by_id("btn_next").click()
# browser.implicitly_wait(20)

# step6 = browser.find_element_by_id("db_server").send_keys('itopzcbv-u353.vm.elestio.app:6443')
# step7 = browser.find_element_by_id("db_user").send_keys('itop')
# step8 = browser.find_element_by_id("db_pwd").send_keys('PASSWORD_TO_CHANGE')
# browser.implicitly_wait(10)
# step9 = browser.find_element_by_id("existing_db").click()
# sleep(10)
# step10 = browser.find_element_by_id("btn_next").click()


# step11 = browser.find_element_by_id("admin_pwd").send_keys('PASSWORD_TO_CHANGE')
# step12 = browser.find_element_by_id("confirm_pwd").send_keys('PASSWORD_TO_CHANGE')
# sleep(10)
# step13 = browser.find_element_by_id("btn_next").click()

# step14 = browser.find_element_by_id("application_url").clear()
# step15 = browser.find_element_by_id("application_url").send_keys('https://DOMAIN_TO_CHANGE')
# step16 = browser.find_element_by_id("sample_data_no").click()
# sleep(10)
# step17 = browser.find_element_by_id("btn_next").click()

# step18 = browser.find_element_by_id("btn_next").click()

# step19 = browser.find_element_by_id("btn_next").click()

# step20 = browser.find_element_by_id("btn_next").click()

# step21 = browser.find_element_by_id("btn_next").click()

# step22 = browser.find_element_by_id("itop-kown-error-mgmt").click()
# step23 = browser.find_element_by_id("itop-problem-mgmt").click()
# sleep(10)
# step24 = browser.find_element_by_id("btn_next").click()

# step25 = browser.find_element_by_id("btn_next").click()

# time.sleep(150)
# step26 = browser.find_element_by_id("enter_itop").click()

# EOF

# sed -i "s~DOMAIN_TO_CHANGE~$DOMAIN~g" ./install_finish.py
# sed -i "s~PASSWORD_TO_CHANGE~$ADMIN_PASSWORD~g" ./install_finish.py

# cat << EOF > requirements.txt
# selenium==3.141.0
# EOF

# apt install -y python3-pip unzip xvfb && pip install -r ./requirements.txt

# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# apt install -y ./google-chrome-stable_current_amd64.deb

# CHROME_MAJOR_VER=$(google-chrome -version | awk '{print $3}' | awk -F"." '{print $1}')
# LATEST_VER=$(curl https://chromedriver.storage.googleapis.com/LATEST_RELEASE)
# wget https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/117.0.5938.88/linux64/chromedriver-linux64.zip

# echo "CHROME_MAJOR_VER="$CHROME_MAJOR_VER
# echo "LATEST_VER="$LATEST_VER

# unzip chromedriver-linux64.zip && mv -f chromedriver-linux64/chromedriver /usr/bin/
# rm -rf google-chrome-stable_current_amd64.deb