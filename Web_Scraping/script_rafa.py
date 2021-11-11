# Prerequisites:
# pip install selenium
# pip install requests
# pip install tqdm
# pip install bs4
# pip install os-sys
# pip install datetime

#importo librerías necesarias
from selenium import webdriver
from selenium.webdriver.common.by import By
import json
from time import sleep
import requests as r
from tqdm import tqdm
from bs4 import BeautifulSoup
import sys
sys.path.append('../Database/')
from dbSQL import *
from datetime import date

# orginal url: https://arbetsformedlingen.se/platsbanken/annonser?page=1&p=5:tPox_ie4_X9X&l=2:CifL_Rzy_Mku
# test: https://arbetsformedlingen.se/platsbanken/annonser?page={j}&q=DISTRIBUTION

# this method gets an url and takes all the jobs in this link
def get_all_urls(driver, link):
    cont = 0
    todos_los_empleos = []
    #idealmente quemar este numero (1000) no es muy buena practica, pero no podemos saber cuantas paginas hay, entonces establecemos un maximo de 1000 paginas (25.000) empleos
    for j in range(1,1000): #correct way: range(1,1000)
        b_link = link.split("page=")
        good_link = b_link[0]+"page="+str(j)+b_link[1][1:]
        print("Searching urls in: ", good_link)
        driver.get(good_link)
        #esto espera 3 segundos a que cargue la pagina, si ya cargó , entonces ya no espera
        driver.implicitly_wait(3)
        for i in range(1,26): #correct way: range(1,26)
            try:
                elemento = driver.find_element(By.XPATH,f"/html/body/div[2]/div/div[8]/div/div/main/div[3]/div/div/div[2]/div/div/div/div/div[2]/div[2]/pb-root/div/pb-page-search/div[2]/div[2]/pb-section-search-result/section/div[2]/div/div/div[2]/section/div[2]/pb-feature-search-result-card[{i}]/div/div[1]/h4/a")
                url = elemento.get_attribute("href")
                print(url, cont)
                todos_los_empleos.append(url)
                cont += 1
            except:
                return(todos_los_empleos)
    return(todos_los_empleos)

#esta funcion recibe una url de una pagina de un trabajo y extrae los datos necesarios
def get_info_job(driver, job):
    ide = str(job)[-8:]
    driver.get(job)
    #estas partes lo que hacen es extraer los datos de los campos que están en la página
    try:
        try:
            title = driver.find_element(By.XPATH,"/html/body/div[2]/div/div[8]/div/div/main/div[3]/div/div/div[2]/div/div/div/div/div[2]/div[2]/pb-root/div/pb-page-jobb/div/section/div/div[2]/div[2]/section/pb-section-job-quick-info/h1").text
        except:
            title = driver.find_element(By.XPATH,"/html/body/div[1]/div/div[8]/div/div/main/div[3]/div/div/div[2]/div/div/div/div/div[2]/div[2]/pb-root/div/pb-page-jobb/div/section/div/div[2]/div[2]/section/pb-section-job-quick-info/h1").text
    except:
        return None
    empresa = driver.find_element(By.XPATH,"/html/body/div[2]/div/div[8]/div/div/main/div[3]/div/div/div[2]/div/div/div/div/div[2]/div[2]/pb-root/div/pb-page-jobb/div/section/div/div[2]/div[2]/section/pb-section-job-quick-info/h2").text
    description = driver.find_element(By.XPATH,"/html/body/div[2]/div/div[8]/div/div/main/div[3]/div/div/div[2]/div/div/div/div/div[2]/div[2]/pb-root/div/pb-page-jobb/div/section/div/div[2]/div[2]/section/pb-section-job-quick-info/div[1]/h3[1]").text
    #como a veces no existe el correo, si existe lo guardo y si no retorno que no existe
    try:
        correo = driver.find_element(By.XPATH,"/html/body/div[2]/div/div[8]/div/div/main/div[3]/div/div/div[2]/div/div/div/div/div[2]/div[2]/pb-root/div/pb-page-jobb/div/section/div/div[2]/div[2]/aside[1]/div/pb-section-job-apply-component/div/div/div[2]/div/div[2]/span/a").text
    except:
        correo = "None"
    #esto son los datos que estoy guardando como diccionario, luego los retorno
    data = {"title":title,
            "entity":empresa,
            "email":correo,
            "url":job,
            "id":ide,
            "description":description}
    return(data)


#esta funcion junta el proceso de las dos funciones anteriores
def get_full_info(driver,raw_url):
    full_data = []
    #funcion que recolecta todas las urls
    urls = get_all_urls(driver,raw_url)
    #por cada una de las urls extraigo los datos de estas
    for i in tqdm(urls):
        data = get_info_job(driver, i)
        if data != None:
            full_data.append(data)
    return(full_data)


def scrape(raw_link, city, main_sector=None, subcategory=None):
    #estas lineas de codigo hace que el browser se ejecute en headless(no se vea)
    options = webdriver.ChromeOptions()
    options.add_argument('--no-sandbox')
    options.add_argument('--disable-dev-shm-usage')
    options.add_argument("--headless")

    #esto abre el browser
    driver = webdriver.Chrome(options = options)
    all_i_need = get_full_info(driver,raw_link)

    print("")
    #genero la lista en donde guardo todas las tuplas de python en la que recorro
    #el diccionario que contiene la info(porque no se por que no usar el diccionario)
    tuplas = []
    for i in all_i_need:
        #extraigo los elementos del diccionario  y los guardo en la lista de tuplas
        element = (i["id"] , i["title"], i["description"], i["email"], i["entity"],date.today(), i["url"], city, main_sector, subcategory)
        tuplas.append(element)
        print(element)

    print("")
    print("-----------------------------------")
    c = 0
    for t in tuplas:
        if t[3]!='None':
            insert_job_offer(t)
            c+=1
    msg = str(c) + " job offers inserted"
    print(msg)
    return msg
    #guardo el archivo json que a mi forma de ver es necesario, luego podría iterar
    #sobre el json o hacer el query desde este script si quisiera
    # with open("all_i_need_4.json" , "w") as file:
    #     json.dump(all_i_need , file)
    #     print("everyting done")

# text = "https://arbetsformedlingen.se/platsbanken/annonser?page=1&p=5:tPox_ie4_X9X&l=2:CifL_Rzy_Mku"
# scrape(text, "Stockholms län", "Hotell, restaurang, storhushåll", "Restaurant and kitchen assistants etc.")
#text = "https://arbetsformedlingen.se/platsbanken/annonser?page=2&p=5:a8gg_ktU_w8V&l=2:CifL_Rzy_Mku"
#scrape(text, "Stockholms län", "Hotell, restaurang, storhushåll", "Pizzabagare m.fl.")
