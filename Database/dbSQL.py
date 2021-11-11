import psycopg2
from datetime import date

#tuple will be like:
#(id, title, description, email , entity, date_accesed , url, city, main_sector, subcategory)

def insert_company(tuple):
    # this function recieves one tuple and inserts the value corresponding to
    # name_company in the table company
    # since id_company should be automatically generated, it returns that
    # id to be used later.
    # in case the company has already been insert, it searches for its id
    # and returns it.
    try:
        con = psycopg2.connect(user = "postgres",
                               password = "Cabrera05",
                               database = "Sweden",
                               host = "database-1.ccgnox6axprd.us-east-2.rds.amazonaws.com",
                               port = "5432")
        print("Conexión exitosa!")

        con.autocommit = False

        cursor = con.cursor()

        sql_check = """SELECT name_company FROM company"""
        cursor.execute(sql_check)
        companies_tuples = cursor.fetchall()
        companies_ls = []

        for company in companies_tuples:
            companies_ls.append(company[0])

        if tuple[4] not in companies_ls:
            sql_insert = """INSERT INTO company VALUES (DEFAULT, %s)
                    RETURNING id_company"""

            cursor.execute(sql_insert, (tuple[4],))
            print("Company insertion completed!")

        else:
            sql_search = """SELECT id_company FROM company
                            WHERE name_company = %s"""
            cursor.execute(sql_search,(tuple[4],))
            print("Companie value already existed")

        id_comp = cursor.fetchone()
        id_comp = id_comp[0]

        con.commit()

        return id_comp

    except psycopg2.Error as e:
        print("Error connecting", e)
        con.rollback();

    finally:
        cursor.close()
        con.close()
        print("Conection closed")

def insert_city(tuple):
    # this function recieves one tuple and inserts the value corresponding to
    # name_city in the table city
    # since id_city should be automatically generated, it returns that
    # id to be used later.
    # in case the city has already been insert, it searches for its id
    # and returns it.
    try:
        con = psycopg2.connect(user = "postgres",
                               password = "Cabrera05",
                               database = "Sweden",
                               host = "database-1.ccgnox6axprd.us-east-2.rds.amazonaws.com",
                               port = "5432")
        print("Conexión exitosa!")

        con.autocommit = False

        cursor = con.cursor()

        sql_check = """SELECT name_city FROM city"""
        cursor.execute(sql_check)
        cities_tuples = cursor.fetchall()
        cities_ls = []

        for city in cities_tuples:
            cities_ls.append(city[0])

        if tuple[7] not in cities_ls:
            sql_insert = """INSERT INTO city VALUES (DEFAULT, %s)
                    RETURNING id_city"""

            cursor.execute(sql_insert, (tuple[7],))
            print("City insertion completed!")

        else:
            sql_search = """SELECT id_city FROM city
                            WHERE name_city = %s"""
            cursor.execute(sql_search,(tuple[7],))
            print("City value already existed")

        id_comp = cursor.fetchone()
        id_comp = id_comp[0]

        con.commit()

        return id_comp

    except psycopg2.Error as e:
        print("Error connecting", e)
        con.rollback();

    finally:
        cursor.close()
        con.close()
        print("Conection closed")

def insert_sector(tuple):
    # this function recieves one tuple and inserts the value corresponding to
    # name_sector in the table sector
    # since id_sector should be automatically generated, it returns that
    # id to be used later.
    # in case the sector has already been insert, it searches for its id
    # and returns it.
    if tuple[8]==None:
        return None
    try:
        con = psycopg2.connect(user = "postgres",
                               password = "Cabrera05",
                               database = "Sweden",
                               host = "database-1.ccgnox6axprd.us-east-2.rds.amazonaws.com",
                               port = "5432")
        print("Conexión exitosa!")

        con.autocommit = False

        cursor = con.cursor()

        sql_check = """SELECT name_sector FROM main_sector"""
        cursor.execute(sql_check)
        sectors_tuples = cursor.fetchall()
        sectors_ls = []

        for sector in sectors_tuples:
            sectors_ls.append(sector[0])

        if tuple[8] not in sectors_ls:
            sql_insert = """INSERT INTO main_sector VALUES (DEFAULT, %s)
                    RETURNING id_sector"""

            cursor.execute(sql_insert, (tuple[8],))
            print("Sector insertion completed!")

        else:
            sql_search = """SELECT id_sector FROM main_sector
                            WHERE name_sector = %s"""
            cursor.execute(sql_search,(tuple[8],))
            print("Sector value already existed")

        id_comp = cursor.fetchone()
        id_comp = id_comp[0]

        con.commit()

        return id_comp

    except psycopg2.Error as e:
        print("Error connecting", e)
        con.rollback();

    finally:
        cursor.close()
        con.close()
        print("Conection closed")

def insert_subcategory(tuple):
    # this function recieves one tuple and inserts the value corresponding to
    # name_subcategory in the table subcategory
    # since id_subcategory should be automatically generated, it returns that
    # id to be used later.
    # in case the subcategory has already been insert, it searches for its id
    # and returns it.
    if tuple[9]==None:
        return None

    try:
        con = psycopg2.connect(user = "postgres",
                               password = "Cabrera05",
                               database = "Sweden",
                               host = "database-1.ccgnox6axprd.us-east-2.rds.amazonaws.com",
                               port = "5432")
        print("Conexión exitosa!")

        con.autocommit = False

        cursor = con.cursor()

        sql_check = """SELECT name_subcategory FROM subcategory"""
        cursor.execute(sql_check)
        subcategories_tuples = cursor.fetchall()
        subcategories_ls = []

        for subcategory in subcategories_tuples:
            subcategories_ls.append(subcategory[0])

        if tuple[9] not in subcategories_ls:
            sql_insert = """INSERT INTO subcategory VALUES (DEFAULT, %s)
                    RETURNING id_subcategory"""

            cursor.execute(sql_insert, (tuple[9],))
            print("Subcategory insertion completed!")

        else:
            sql_search = """SELECT id_subcategory FROM subcategory
                            WHERE name_subcategory = %s"""
            cursor.execute(sql_search,(tuple[9],))
            print("Subcategory value already existed")

        id_comp = cursor.fetchone()
        id_comp = id_comp[0]

        con.commit()

        return id_comp

    except psycopg2.Error as e:
        print("Error connecting", e)
        con.rollback();

    finally:
        cursor.close()
        con.close()
        print("Conection closed")

def insert_job_offer(tuple):
    # this function recieves one tuple and inserts the value corresponding to
    # name_job_offer in the table job_offer
    # since id_job_offer should be automatically generated, it returns that
    # id to be used later.
    # in case the job_offer has already been insert, it searches for its id
    # and returns it.
    #tuple will be like:
    #(id, title, description, email , entity, date_accesed , url, city, main_sector, subcategory)


    try:
        con = psycopg2.connect(user = "postgres",
                               password = "Cabrera05",
                               database = "Sweden",
                               host = "database-1.ccgnox6axprd.us-east-2.rds.amazonaws.com",
                               port = "5432")
        print("Conexión exitosa!")

        con.autocommit = False

        cursor = con.cursor()

        id_company = insert_company(tuple)
        id_city = insert_city(tuple)
        id_main_sector = insert_sector(tuple)
        id_subcategory = insert_subcategory(tuple)
        id_job_tuple = int(tuple[0])

        sql_check = """SELECT id_job FROM job_offer"""
        cursor.execute(sql_check)
        job_offers_tuples = cursor.fetchall()

        job_offers_ls = []
        for job_offer in job_offers_tuples:
            job_offers_ls.append(job_offer[0])


        if id_job_tuple in job_offers_ls:
            sql_search = """SELECT * FROM job_offer
                            WHERE id_job = %s"""
            cursor.execute(sql_search,(id_job_tuple,))
            print("Job value already existed")

            row = cursor.fetchone()
            # print("Row = ", row[0],", ", row[1],", ", row[2],", ", row[3],", ", row[4],", ", row[5],", ", row[6],", ", row[7],", ", row[8],", ", row[9])
            # print("Tuple = ", id_job_tuple,", ", tuple[1],", ", tuple[2],", ", tuple[3],", ", tuple[4],", ", tuple[5],", ", tuple[6],", ", tuple[7],", ", tuple[8],", ", tuple[9])

            if (row[1]!=tuple[1]) or (row[2]!=tuple[2]) or (row[3]!=tuple[3]) or (row[4]!=id_company) or (row[5]!=tuple[5]) or (row[6]!=tuple[6]) or (row[7]!=id_city) or (row[8]!=id_main_sector) or (row[9]!=id_subcategory):
                sql_update = """UPDATE job_offer
                                SET (name_job, description_job, email_job, id_company_company, date_accesed, url_job, id_city_city, id_sector_main_sector, id_subcategory_subcategory) = (%s, %s,%s,%s,%s,%s,%s,%s,%s)
                                WHERE id_job = %s
                                RETURNING id_job"""
                cursor.execute(sql_update, (tuple[1], tuple[2], tuple[3], id_company, tuple[5], tuple[6], id_city, id_main_sector, id_subcategory, id_job_tuple))
                print("Value updated!")

            sql_search = """SELECT * FROM job_offer
                            WHERE id_job = %s"""
            cursor.execute(sql_search,(id_job_tuple,))


        else:
            sql_insert = """INSERT INTO job_offer VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
                    RETURNING id_job"""

            cursor.execute(sql_insert, (id_job_tuple, tuple[1], tuple[2], tuple[3], id_company, tuple[5], tuple[6], id_city, id_main_sector, id_subcategory))
            print("Job insertion completed!")

        id_comp = cursor.fetchone()
        id_comp = id_comp[0]

        con.commit()

        return id_comp

    except psycopg2.Error as e:
        print("Error connecting", e)
        con.rollback();

    finally:
        cursor.close()
        con.close()
        print("Conection closed")

def insert_customer(tuple):
    #tuple recieved is of the form:
    # (name_customer, customer_email, password_customer)

    # this function recieves one tuple and inserts the value corresponding to
    # name_customer in the table customer
    # since id_customer should be automatically generated, it returns that
    # id to be used later.
    # in case the customer has already been insert, it searches for its id
    # and returns it.
    try:
        con = psycopg2.connect(user = "postgres",
                               password = "Cabrera05",
                               database = "Sweden",
                               host = "database-1.ccgnox6axprd.us-east-2.rds.amazonaws.com",
                               port = "5432")
        print("Conexión exitosa!")

        con.autocommit = False

        cursor = con.cursor()

        sql_check = """SELECT name_customer FROM customer"""
        cursor.execute(sql_check)
        customers_tuples = cursor.fetchall()
        customers_ls = []

        for customer in customers_tuples:
            customers_ls.append(customer[0])

        if tuple[0] not in customers_ls:
            sql_insert = """INSERT INTO customer VALUES (DEFAULT, %s, %s, %s, %s, NULL, NULL)
                    RETURNING id_customer"""
            f_tuple = tuple +(date.today(),)
            cursor.execute(sql_insert, (f_tuple))
            print("customer insertion completed!")

        else:
            sql_search = """SELECT id_customer FROM customer
                            WHERE name_customer = %s"""
            cursor.execute(sql_search,(tuple[0],))
            print("customer value already existed")

        id_comp = cursor.fetchone()
        id_comp = id_comp[0]

        con.commit()

        return id_comp

    except psycopg2.Error as e:
        print("Error connecting", e)
        con.rollback();

    finally:
        cursor.close()
        con.close()
        print("Conection closed")

def insert_body(tuple):
    #tuple recieved is of the form: (id_cust, body_message)
    # this function recieves one tuple and inserts the value corresponding to
    # name_customer in the table customer
    # since id_customer should be automatically generated, it returns that
    # id to be used later.
    # in case the customer has already been insert, it searches for its id
    # and returns it.
    #it returns a tuple with id_customer and id_body

    try:
        con = psycopg2.connect(user = "postgres",
                               password = "Cabrera05",
                               database = "Sweden",
                               host = "database-1.ccgnox6axprd.us-east-2.rds.amazonaws.com",
                               port = "5432")
        print("Conexión exitosa!")

        con.autocommit = False

        cursor = con.cursor()

        id_cust = tuple[0]

        f_tuple = (id_cust,)+ (tuple[1],)
        print("Tuple to insert: ", f_tuple)

        sql_insert = """INSERT INTO body_message VALUES (%s, DEFAULT, %s)
                        RETURNING *"""

        cursor.execute(sql_insert,f_tuple)
        id_cust_body = cursor.fetchone()
        id_cust_body = (id_cust_body[0],id_cust_body[1])

        con.commit()
        print("Body message inserted")
        return id_cust_body

    except psycopg2.Error as e:
        print("Error connecting", e)
        con.rollback();

    finally:
        cursor.close()
        con.close()
        print("Conection closed")

def insert_application(tuple):
    #tuple recieved is of the form: (id_customer, id_job_offer)
    # this function recieves one tuple and inserts the value corresponding to
    # name_customer in the table customer
    # since id_customer should be automatically generated, it returns that
    # id to be used later.
    # in case the customer has already been insert, it searches for its id
    # and returns it.
    #it returns a tuple with id_customer and id_job

    try:
        con = psycopg2.connect(user = "postgres",
                               password = "Cabrera05",
                               database = "Sweden",
                               host = "database-1.ccgnox6axprd.us-east-2.rds.amazonaws.com",
                               port = "5432")
        print("Conexión exitosa!")

        con.autocommit = False

        cursor = con.cursor()

        f_tuple = tuple + (date.today(),)

        sql_insert = """INSERT INTO application VALUES (%s, %s, %s)
                        RETURNING *"""

        cursor.execute(sql_insert,f_tuple)
        id_application = cursor.fetchone()
        id_application = (id_application[0],id_application[1])

        con.commit()
        print("application inserted")
        return id_application

    except psycopg2.Error as e:
        print("Error connecting", e)
        con.rollback();

    finally:
        cursor.close()
        con.close()
        print("Conection closed")

def get_customer(id_customer):
# This function takes the id of a customer and return a tuple with its information
# tuple type: (id, Name, email_address, email_password, date(yy,mm,dd))
    try:
        con = psycopg2.connect(user = "postgres",
                               password = "Cabrera05",
                               database = "Sweden",
                               host = "database-1.ccgnox6axprd.us-east-2.rds.amazonaws.com",
                               port = "5432")
        print("Conexión exitosa!")

        con.autocommit = False

        cursor = con.cursor()

        sql_get = """SELECT * FROM customer
                    WHERE id_customer = %s"""

        cursor.execute(sql_get, (id_customer,))
        row = cursor.fetchone()

        return row

        con.commit()


    except psycopg2.Error as e:
        print("Error connecting", e)
        con.rollback();

    finally:
        cursor.close()
        con.close()
        print("Conection closed")

def get_bodies(id_customer):
# This function takes the id of a body and return a text with its information

    try:
        con = psycopg2.connect(user = "postgres",
                               password = "Cabrera05",
                               database = "Sweden",
                               host = "database-1.ccgnox6axprd.us-east-2.rds.amazonaws.com",
                               port = "5432")
        print("Conexión exitosa!")

        con.autocommit = False

        cursor = con.cursor()

        sql_get = """SELECT * FROM body_message
                    WHERE id_customer_customer = %s"""

        cursor.execute(sql_get, (id_customer,))
        rows = cursor.fetchall()

        return rows

        con.commit()


    except psycopg2.Error as e:
        print("Error connecting", e)
        con.rollback();

    finally:
        cursor.close()
        con.close()
        print("Conection closed")

def get_body(id_customer,id_body):
# This function takes the id of a body and return a text with its information

    try:
        con = psycopg2.connect(user = "postgres",
                               password = "Cabrera05",
                               database = "Sweden",
                               host = "database-1.ccgnox6axprd.us-east-2.rds.amazonaws.com",
                               port = "5432")
        print("Conexión exitosa!")

        con.autocommit = False

        cursor = con.cursor()

        sql_get = """SELECT * FROM body_message
                    WHERE id_customer_customer = %s
                    AND id_body = %s"""

        cursor.execute(sql_get, (id_customer,id_body))
        row = cursor.fetchone()

        return row[2]

        con.commit()


    except psycopg2.Error as e:
        print("Error connecting", e)
        con.rollback();

    finally:
        cursor.close()
        con.close()
        print("Conection closed")


def get_jobs(id_customer, n_jobs, id_sector, id_subcategory=None):
# This function takes some parameters and returns all the job offers that
# fill those parameters and returns a list of tuples
# tuple form: (id_job, name_job, description_job, email_job, id_company, id_sector, id_subcategory,date_accesed)
    try:
        con = psycopg2.connect(user = "postgres",
                               password = "Cabrera05",
                               database = "Sweden",
                               host = "database-1.ccgnox6axprd.us-east-2.rds.amazonaws.com",
                               port = "5432")
        print("Conexión exitosa!")

        con.autocommit = False

        cursor = con.cursor()

        if id_subcategory != None:
            sql_get = """
                        SELECT *
                        FROM (
                        	SELECT DISTINCT ON (id_job) id_job, name_job, description_job, email_job, id_company_company, id_sector_main_sector, id_subcategory_subcategory,jobs.date_accesed, apps.id_customer_customer
                        	FROM (SELECT * FROM job_offer
                        	WHERE id_sector_main_sector = %s
                        	AND id_subcategory_subcategory = %s
                        	) as jobs LEFT JOIN
                        	(SELECT * FROM application
                        	WHERE id_customer_customer NOT IN (
                        										SELECT id_customer_customer FROM application
                        										WHERE id_customer_customer != %s)
                        	) as apps
                        ON id_job = id_job_job_offer
                        ORDER BY id_job
                        ) as no_dups
                        WHERE id_customer_customer IS NULL
                        ORDER BY no_dups.date_accesed DESC
                        LIMIT %s;
                    """

            cursor.execute(sql_get, (id_sector,id_subcategory, id_customer, n_jobs))

        else:
            sql_get = """
                        SELECT *
                        FROM (
                        	SELECT DISTINCT ON (id_job) id_job, name_job, description_job, email_job, id_company_company, id_sector_main_sector, id_subcategory_subcategory,jobs.date_accesed, apps.id_customer_customer
                        	FROM (SELECT * FROM job_offer
                        	WHERE id_sector_main_sector = %s
                        	) as jobs LEFT JOIN
                        	(SELECT * FROM application
                        	WHERE id_customer_customer NOT IN (
                        										SELECT id_customer_customer FROM application
                        										WHERE id_customer_customer != %s)
                        	) as apps
                        ON id_job = id_job_job_offer
                        ORDER BY id_job
                        ) as no_dups
                        WHERE id_customer_customer IS NULL
                        ORDER BY no_dups.date_accesed DESC
                        LIMIT %s;
                        """
            cursor.execute(sql_get, (id_sector, id_customer, n_jobs))


        rows = cursor.fetchall()

        return rows

        con.commit()


    except psycopg2.Error as e:
        print("Error connecting", e)
        con.rollback();

    finally:
        cursor.close()
        con.close()
        print("Conection closed")

def get_client_report(id_customer, n_jobs):
# This function takes some parameters and returns all the job offers that
# fill those parameters and returns a list of tuples
# tuple form: (id_job, name_job, description_job, email_job, id_company, id_sector, id_subcategory,date_accesed)
    try:
        con = psycopg2.connect(user = "postgres",
                               password = "Cabrera05",
                               database = "Sweden",
                               host = "database-1.ccgnox6axprd.us-east-2.rds.amazonaws.com",
                               port = "5432")
        print("Conexión exitosa!")

        con.autocommit = False

        cursor = con.cursor()

        sql_get = """
                SELECT id_job, name_job, name_company, email_job, url_job, date_app FROM (
                SELECT * FROM job_offer
                INNER JOIN (SELECT *
                			FROM application
                		    WHERE id_customer_customer = %s) as app_customer
                ON id_job = id_job_job_offer
                ) as job_app INNER JOIN company
                ON id_company_company = id_company
                ORDER BY date_app DESC
                LIMIT %s
                    """
        cursor.execute(sql_get, (id_customer, n_jobs))


        rows = cursor.fetchall()

        return rows

        con.commit()


    except psycopg2.Error as e:
        print("Error connecting", e)
        con.rollback();

    finally:
        cursor.close()
        con.close()
        print("Conection closed")

def get_client_list():
# returns a tuple like: (id_customer, name_customer, email_customer, password_customer, date_inserted, n_apps_sent)
    try:
        con = psycopg2.connect(user = "postgres",
                               password = "Cabrera05",
                               database = "Sweden",
                               host = "database-1.ccgnox6axprd.us-east-2.rds.amazonaws.com",
                               port = "5432")
        print("Conexión exitosa!")

        con.autocommit = False

        cursor = con.cursor()

        sql_get = """
                    SELECT id_customer, name_customer, email_customer, password_customer, date_inserted, n_apps_sent
                    FROM (
                    	SELECT * FROM CUSTOMER
                    	INNER JOIN (
                    				SELECT id_customer_customer, COUNT(*) as n_apps_sent
                    				FROM application
                    				GROUP BY id_customer_customer
                    				) as cust_app_count
                    	ON id_customer = id_customer_customer
                    ) as cust_apps_count
                    """
        cursor.execute(sql_get)


        rows = cursor.fetchall()

        return rows

        con.commit()


    except psycopg2.Error as e:
        print("Error connecting", e)
        con.rollback();

    finally:
        cursor.close()
        con.close()
        print("Conection closed")

def get_job_offer_list():
# returns a tuple like: (id_job, name_job, description_job, name_company, url_job, date_accesed, name_sector, name_subcategory, email_job)
    try:
        con = psycopg2.connect(user = "postgres",
                               password = "Cabrera05",
                               database = "Sweden",
                               host = "database-1.ccgnox6axprd.us-east-2.rds.amazonaws.com",
                               port = "5432")
        print("Conexión exitosa!")

        con.autocommit = False

        cursor = con.cursor()

        sql_get = """
            SELECT id_job, name_job, description_job, name_company, url_job, date_accesed, name_sector, name_subcategory, email_job
            FROM job_offer INNER JOIN company
            ON id_company_company = id_company
            INNER JOIN main_sector
            ON id_sector_main_sector = id_sector
            INNER JOIN subcategory
            ON id_subcategory_subcategory = id_subcategory
            ORDER BY date_accesed DESC
                    """
        cursor.execute(sql_get)


        rows = cursor.fetchall()

        return rows

        con.commit()


    except psycopg2.Error as e:
        print("Error connecting", e)
        con.rollback();

    finally:
        cursor.close()
        con.close()
        print("Conection closed")

def get_company_list():
# returns a tuple like: (id_company, name_company)
    try:
        con = psycopg2.connect(user = "postgres",
                               password = "Cabrera05",
                               database = "Sweden",
                               host = "database-1.ccgnox6axprd.us-east-2.rds.amazonaws.com",
                               port = "5432")
        print("Conexión exitosa!")

        con.autocommit = False

        cursor = con.cursor()

        sql_get = """
                    SELECT * FROM company
                    """
        cursor.execute(sql_get)

        rows = cursor.fetchall()

        return rows

        con.commit()


    except psycopg2.Error as e:
        print("Error connecting", e)
        con.rollback();

    finally:
        cursor.close()
        con.close()
        print("Conection closed")

def get_company_report(id_comp):
# returns a tuple like: (id_job, name_job, description_job, url_job, name_city,date_accesed, name_sector, name_subcategory, email_job, id_company)
    try:
        con = psycopg2.connect(user = "postgres",
                               password = "Cabrera05",
                               database = "Sweden",
                               host = "database-1.ccgnox6axprd.us-east-2.rds.amazonaws.com",
                               port = "5432")
        print("Conexión exitosa!")

        con.autocommit = False

        cursor = con.cursor()

        sql_get = """
                    SELECT id_job, name_job, description_job, url_job, name_city,date_accesed, name_sector, name_subcategory, email_job, id_company
                    FROM job_offer INNER JOIN company
                    ON id_company_company = id_company
                    INNER JOIN main_sector
                    ON id_sector_main_sector = id_sector
                    INNER JOIN subcategory
                    ON id_subcategory_subcategory = id_subcategory
                    INNER JOIN city
                    ON id_city_city = id_city
                    WHERE id_company = %s
                    ORDER BY date_accesed DESC
                    """
        cursor.execute(sql_get, (id_comp,))


        rows = cursor.fetchall()

        return rows

        con.commit()


    except psycopg2.Error as e:
        print("Error connecting", e)
        con.rollback();

    finally:
        cursor.close()
        con.close()
        print("Conection closed")

def insert_cv_space(id_customer, file_name):
    try:
        con = psycopg2.connect(user = "postgres",
                               password = "Cabrera05",
                               database = "Sweden",
                               host = "database-1.ccgnox6axprd.us-east-2.rds.amazonaws.com",
                               port = "5432")
        print("Conexión exitosa!")

        con.autocommit = False

        cursor = con.cursor()

        sql_insert = """INSERT INTO resume VALUES (%s, DEFAULT, %s, NULL)
                        RETURNING id_cv"""
        cursor.execute(sql_insert,(id_customer, file_name))
        id_cv = cursor.fetchone()

        con.commit()

        return id_cv[0]

    except psycopg2.Error as e:
        print("Error connecting", e)
        con.rollback();

    finally:
        cursor.close()
        con.close()
        print("Conection closed")

def insert_cv_path(id_customer, id_cv, path):
    try:
        con = psycopg2.connect(user = "postgres",
                               password = "Cabrera05",
                               database = "Sweden",
                               host = "database-1.ccgnox6axprd.us-east-2.rds.amazonaws.com",
                               port = "5432")
        print("Conexión exitosa!")

        con.autocommit = False

        cursor = con.cursor()

        sql_insert = """UPDATE resume SET path_cv = %s
                        WHERE id_customer_customer = %s
                        AND id_cv = %s
                        """
        cursor.execute(sql_insert,(path, id_customer, id_cv))

        con.commit()

        return "Succesful path insertion"

    except psycopg2.Error as e:
        print("Error connecting", e)
        con.rollback();

    finally:
        cursor.close()
        con.close()
        print("Conection closed")

def get_cv_report(id_customer):
# returns a tuple like: (id_job, name_job, description_job, url_job, name_city,date_accesed, name_sector, name_subcategory, email_job, id_company)
    try:
        con = psycopg2.connect(user = "postgres",
                               password = "Cabrera05",
                               database = "Sweden",
                               host = "database-1.ccgnox6axprd.us-east-2.rds.amazonaws.com",
                               port = "5432")
        print("Conexión exitosa!")

        con.autocommit = False

        cursor = con.cursor()

        sql_get = """
                    SELECT id_cv, name_cv FROM resume
                    WHERE id_customer_customer = %s
                    """
        cursor.execute(sql_get, (id_customer,))


        rows = cursor.fetchall()

        return rows

        con.commit()


    except psycopg2.Error as e:
        print("Error connecting", e)
        con.rollback();

    finally:
        cursor.close()
        con.close()
        print("Conection closed")
