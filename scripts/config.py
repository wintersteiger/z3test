import os

SMTPSERVER='smtp.gmail.com'
SMTPPORT=587
SENDER = os.getenv('GMAILUSER', 'leodemouramsr@gmail.com')
PASSWORD = os.getenv('GMAILPASSW', None)
if PASSWORD != None:
    PASSWORD = PASSWORD.strip('\"\' \t\n')

NUMJOBS=os.getenv("MAKEJOBS", 16)

RSSFEED_BRANCHES=['master', 'unstable', 'contrib', 'mcsat']
DEVS=["cwinter@microsoft.com"]
ORIGIN="https://github.com/wintersteiger/z3"
GIT="git"
PYTHON="python"
JAVA="java"
BUILDDIR="build"

# C#
CSC="csc.exe"
CSDRIVER="driver.cs"
CSTEMP="cstest.exe"
