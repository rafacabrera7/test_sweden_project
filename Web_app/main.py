# perform pip install fastapi[all]
# pip install typing
# pip install pydantic
# pip install os-sys
# pip install httptools==0.1.1
# pip install uvicorn==0.11.3
# pip install uvicorn

from fastapi import FastAPI, File, UploadFile
from fastapi.staticfiles import StaticFiles
from fastapi.responses import RedirectResponse

from typing import Optional
from pydantic import BaseModel

import sys
sys.path.append('../Database/')
from dbSQL import *
from save_pdf import *
sys.path.append('../Email/')
from send_emails import *
sys.path.append('../Web_Scraping/')
from script_rafa import *

from datetime import date


class Client(BaseModel):
    client_id: Optional[int] = None
    name: str
    email: str
    password: str
    smtp_user: str
    smtp_password: str

class ClientBodyInsert(BaseModel):
    id: int
    message_body_id: Optional[int] = None
    message_body: str


class JobOfferInsert(BaseModel):
    id_job: int
    name: str
    description: str
    email_job_offer: str
    company: str
    city: str
    url: str
    main_category: str
    subcategory: str


class Application(BaseModel):
    client_id: int
    category: str
    subcategory: str
    number_toSend: int
    email_subject: str
    body_id: int
    cv_id: int



app = FastAPI()

app.mount("/web/static/", StaticFiles(directory="./web/static/"), name="static")


@app.get("/")
async def root():
    response = RedirectResponse(url='/web/static/index.html')
    # response = RedirectResponse(url='/web/static/login.html')
    return response


# @app.post("/login")
# async def onLogin():
#     # Manage Login Response, might need to modify parameters
#     response = RedirectResponse(url='/web/static/index.html')
#     return response


@app.get("/scrape/")
async def ScrapeRequest(
        city: str , main_category: str,
        subcategory: str, url:str):
    print(city)
    print(main_category)
    print(subcategory)
    print(url)
    t = "finished"
    t = scrape(url, city, main_category, subcategory)
    return {"success": True, "msg": t}


@app.post("/insert_client")
async def insert_client(
        client: Client):
    # perform validations
    print(client.client_id)
    print(client.name)
    print(client.email)
    print(client.password)
    print(client.smtp_user)
    print(client.smtp_password)
    t = (client.client_id, client.name, client.email, client.password, client.smtp_user, client.smtp_password)
    m = insert_customer(t)
    return {"success": True, "msg": m}

# working on client list
@app.get("/list_clients")
async def list_clients():
    t_clients = get_client_list()
    ls_clients = []
    for c in t_clients:
        dic_cli = {"client_id": c[0], "name": c[1],
                   "email": c[2], "email_password": c[3],
                   "date_inserted": c[4]}
        ls_clients.append(dic_cli)

    count = len(ls_clients)
    return {"success": True, "clients": ls_clients, "count": count}


@app.get("/client_report/")
async def client_report(
    client_id: int,
    to_display: int,
):

    t_apps = get_client_report(client_id, to_display)
    ls_apps = []
    for a in t_apps:
        dic_app = {"job_id": a[0], "job_name": a[1], "company": a[2], "email": a[3], "url": a[4], "date": a[5]}
        ls_apps.append(dic_app)

    return {"success": True, "jobs": ls_apps, "max_applications": len(ls_apps)}


@app.get("/client_body_report/")
async def client_body_report(
    client_id: int
):
    t_bodies = get_bodies(client_id)
    ls_bodies = []
    for b in t_bodies:
        dic_body = {"id":b[1], "message_body":b[2]}
        ls_bodies.append(dic_body)
    # please do include client id
    return {"success": True, "bodies": ls_bodies, "client_id": client_id}


@app.post("/client_insert_body")
async def client_insert_body(
    client: ClientBodyInsert
):
    if (client.message_body_id is None):
        print("editing existing message")
    print(client.id)
    print(client.message_body)
    insert_body((client.id, client.message_body))
    return {"success": True, "msg": "Success Body Insert"}

# add a id_job_offer
@app.post("/insert_job_offer")
async def insert_joboffer(
    joboffer: JobOfferInsert
):
    print(joboffer.name)
    print(joboffer.description)
    print(joboffer.email_job_offer)
    print(joboffer.company)
    print(joboffer.city)
    print(joboffer.url)
    print(joboffer.main_category)
    print(joboffer.subcategory)
    insert_job_offer((567, joboffer.name, joboffer.description, joboffer.email_job_offer, joboffer.company,date.today(),joboffer.url, joboffer.city, joboffer.main_category, joboffer.subcategory))
    return {"success": True, "msg": "Successful JobOffer Insert"}


# add id_job and email_job
@app.get("/list_job_offer")
async def list_joboffer(
):
    t_jobs = get_job_offer_list()
    ls_jobs = []
    for j in t_jobs:
        dic_job = {"job_id":j[0],"job_name": j[1],
                   "description": j[2], "company": j[3],
                   "url": j[4], "date": j[5], "category": j[6], "subcategory": j[7],
                   "email_joboffer": j[8]}
        ls_jobs.append(dic_job)

    return {"success": True, "msg": "Successful JobOffer Insert", "joboffers": ls_jobs}


@app.get("/list_jobcompanies")
async def list_jobcompanies():
    t_companies = get_company_list()
    ls_companies = {}
    for c in t_companies:
        ls_companies[str(c[0])] = c[1]
    count = len(ls_companies)
    return {"success": True, "companies": ls_companies, "count": count}

@app.get("/list_job_categories")
async def list_jobcompanies():
    info = get_category_list()
    categories = {}
    for t in info:
        categories[t[0]] = t[1]
    count = len(categories)
    return {"success": True, "categories": categories, "count": count}

@app.get("/list_job_subcategories")
async def list_jobcompanies():
    info = get_subcategory_list()
    subcategories = {}
    for t in info:
        subcategories[t[0]] = t[1]
    count = len(subcategories)
    return {"success": True, "subcategories": subcategories, "count": count}


@app.get("/company_report/")
async def company_report(
    company_id: int,
):
    t_jobs = get_company_report(company_id)
    ls_jobs = []
    for j in t_jobs:
        dic_job = {"job_name": j[1], "company": j[2], "url": j[3],
                "city": j[4], "date": j[5],
                "category": j[6],
                "subcategory": j[7]}
        ls_jobs.append(dic_job)

    return {"success": True, "jobs": ls_jobs}


@app.post("/apply")
async def apply_application(
        application: Application):
    # perform validations
    # print(application.client_id)
    # print(application.category)
    # print(application.subcategory)
    # print(application.number_toSend)
    # print(application.email_subject)
    # print(application.body_id)
    # print(application.cv_id)
    s = send_Emails(application.client_id, application.email_subject, application.body_id, application.cv_id, application.number_toSend, application.category,application.subcategory)
    # print(s)
    return {"success": True, "msg": s}


@app.post("/uploadCV/")
async def uploadCV(
        client_id: int,
        cv_name: str,
        CVfile: UploadFile = File(...)):
    s = "Failed to uploadCV"
    if CVfile is None:
        print("no cv given")
    else:
        id_cv = insert_cv_space(client_id,CVfile.filename)
        path_cv = save_pdf(client_id, id_cv, CVfile, CVfile.filename)
        insert_cv_path(client_id, id_cv, path_cv)
        s = "Saved succefully"
    return {"msg": s}


@app.get("/cv_report/")
async def company_report(
    client_id: int,
):
    t_cvs = get_cv_report(client_id)
    ls_cvs = []
    for c in t_cvs:
        dic_cv = {"id_cv": c[0], "cv_name": c[1]}
        ls_cvs.append(dic_cv)

    return {"success": True, "cvs": ls_cvs}
