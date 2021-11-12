import smtplib
import email.utils
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.mime.application import MIMEApplication
import sys
sys.path.append('../Database/')
from dbSQL import *
from pathlib import Path

msg = MIMEMultipart('alternative')

cv_path = get_cv_path(1, 6)
print(cv_path)
path = Path(cv_path)
print("1")
with open(path, "rb") as fil:
    print("opened")
    part = MIMEApplication(
        fil.read(),
        Name="test_1.pdf"
    )

# After the file is closed
part['Content-Disposition'] = 'attachment; filename="%s"' % "test_1.pdf"
msg.attach(part)
