import psycopg2
import pandas as pd

try:
    con = psycopg2.connect(user = "postgres",
                           password = "Cabrera05",
                           database = "Sweden",
                           host = "database-1.ccgnox6axprd.us-east-2.rds.amazonaws.com",
                           port = "5432")
    print("Conexión exitosa!")

    con.autocommit = False

    cursor = con.cursor()

    # cursor.execute(open("dml_db_01.sql","r").read())

    sql_search = """SELECT * FROM company
                    """
    x = pd.read_sql_query(sql_search, con)
    print(x.head())
    print(x.shape)

    con.commit()

except psycopg2.Error as e:
    print("Error connecting", e)
    con.rollback();

finally:
    cursor.close()
    con.close()
    print("Conection closed")
