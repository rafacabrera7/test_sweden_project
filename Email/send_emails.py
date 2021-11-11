import smtplib
import email.utils
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
import sys
sys.path.append('../Database/')
from dbSQL import *

def send_Email(id_customer, subject, id_body, file, recipient, id_job,j_description="", id_company=None):

    info = get_customer(id_customer)

    # Replace sender@example.com with your "From" address.
    # This address must be verified.
    SENDER = info[2]
    SENDERNAME = info[1]

    # Replace recipient@example.com with a "To" address. If your account
    # is still in the sandbox, this address must be verified.
    RECIPIENT  = recipient

    # Replace smtp_username with your Amazon SES SMTP user name.
    USERNAME_SMTP = info[5]

    # Replace smtp_password with your Amazon SES SMTP password.
    PASSWORD_SMTP = info[6]

    # (Optional) the name of a configuration set to use for this message.
    # If you comment out this line, you also need to remove or comment out
    # the "X-SES-CONFIGURATION-SET:" header below.
    # CONFIGURATION_SET = "ConfigSet"

    # If you're using Amazon SES in an AWS Region other than US West (Oregon),
    # replace email-smtp.us-west-2.amazonaws.com with the Amazon SES SMTP
    # endpoint in the appropriate region.
    HOST = "email-smtp.us-east-2.amazonaws.com"
    PORT = 587

    # The subject line of the email.
    SUBJECT = subject

    # The email body for recipients with non-HTML email clients.
    BODY_TEXT = get_body(id_customer, id_body)

    # The HTML body of the email.
    BODY_HTML = """<html>
    <head></head>
    <body>
      <h1>Amazon SES SMTP Email Test</h1>
      <p>This email was sent with Amazon SES using the
        <a href='https://www.python.org/'>Python</a>
        <a href='https://docs.python.org/3/library/smtplib.html'>
        smtplib</a> library.</p>
    </body>
    </html>
                """

    # Create message container - the correct MIME type is multipart/alternative.
    msg = MIMEMultipart('alternative')
    msg['Subject'] = SUBJECT
    msg['From'] = email.utils.formataddr((SENDERNAME, SENDER))
    msg['To'] = RECIPIENT
    # Comment or delete the next line if you are not using a configuration set
    # msg.add_header('X-SES-CONFIGURATION-SET',CONFIGURATION_SET)

    # Record the MIME types of both parts - text/plain and text/html.
    part1 = MIMEText(BODY_TEXT, 'plain')
    # part2 = MIMEText(BODY_HTML, 'html')

    # Attach parts into message container.
    # According to RFC 2046, the last part of a multipart message, in this case
    # the HTML message, is best and preferred.
    msg.attach(part1)
    # msg.attach(part2)

    # with open('CV_Rafael_Cabrera_Jimenez.pdf', 'rb') as f:
    #     file_data = f.read()
    #     file_name = f.name
    #
    # msg.add_attachment(file_data, maintype='application', subtype='octet-stream', filename=file_name)


    # Try to send the message.
    try:
        server = smtplib.SMTP(HOST, PORT)
        server.ehlo()
        server.starttls()
        #stmplib docs recommend calling ehlo() before & after starttls()
        server.ehlo()
        server.login(USERNAME_SMTP, PASSWORD_SMTP)
        print("Con with SES donde")
        server.sendmail(SENDER, RECIPIENT, msg.as_string())
        server.close()
    # Display an error message if something goes wrong.
    except Exception as e:
        print ("Error: ", e)
        return 0
    else:
        insert_application((id_customer,id_job))
        print ("Email sent!")
        return 1

def send_Emails(id_customer, subject, id_body, file, n_jobs, id_sector, id_subcategory=None):
    job_list = get_jobs(id_customer, n_jobs, id_sector, id_subcategory)
    c = 0
    print("Emails will be be sent: ")
    for j in job_list:
        print(j[3])
        t = send_Email(id_customer, subject, id_body, file, j[3], j[0],j[2], j[4])
        c+=t
    r = str(c) + " emails sent"
    return r
