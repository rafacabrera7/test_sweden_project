# pip install pytest-shutil
import os
import shutil
from fastapi import FastAPI, File, UploadFile

def save_pdf(id_customer, id_cv, file_obj,file_nm='Test'):
    path = "/home/ubuntu/test_sweden_project/Database/CVs"

    path += "/id_customer_" + str(id_customer) + "/id_cv_" + str(id_cv)

    os.makedirs(path)

    # f_name = "cust_"+str(id_customer)+"_cv_"+str(id_cv)+".pdf"
    save_in = os.path.join(path, file_nm)
    print("Save in: ", save_in)
    with open(save_in, "wb") as buffer:
        shutil.copyfileobj(file_obj.file,buffer)

    return save_in

# save_pdf()
