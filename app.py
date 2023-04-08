# npx kill-port 5000
import smtplib
from random import randint
from flask import Flask, render_template, request, redirect, url_for
import smtplib
from flask_mysqldb import MySQL


app = Flask(__name__)
session={}
# session['username']='12345678'

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'bros'
app.config['MYSQL_PASSWORD'] = 'cop290@Mauve'
app.config['MYSQL_DB'] = 'mauve'

mysql = MySQL(app)

#1 HOME
@app.route('/home', methods = ['GET'])
def renderHome():
    return render_template('index.html')

#1.1 goto POSTS
@app.route('/gotoPost', methods = ['GET'])
def gotoPosts():
    if session : return render_template('NewPost.html')
    else : return redirect('/gotologin')

#2 POST
@app.route('/addPost', methods = ['POST'])
def addPost():
    cursor = mysql.connection.cursor()
    username = session['username']
    title = request.form.get('title')
    content = request.form.get('content')
    category = request.form.get('category')
    likes=0

    cursor.execute('''INSERT INTO posts (postedBy, title, content, category, likes)
                      VALUES (%s, %s, %s, %s, %s)''',
                   (username, title, content, category, likes))
    
    mysql.connection.commit()
    cursor.close()
    return redirect('/home')

#2.1 ABORT
@app.route('/abort')
def abort(): return redirect('/home')

#3 FRIENDS
# if login then select posts from friends of the user, else redirect to login

@app.route('/friends')
def friendsPost(): 
    allPosts = []
    if session : 
        cursor = mysql.connection.cursor()
        cursor.execute('''SELECT * FROM friends WHERE user1_id = %s ''', (session['username'],))
        friends = cursor.fetchall()
        cursor.close()
        for friend in friends :
            cursor = mysql.connection.cursor()
            cursor.execute('''SELECT * FROM posts WHERE postedBy = %s ''', (friend[1],))
            posts = cursor.fetchall()
            cursor.close()
            for post in posts :
                allPosts.append(post)
        return render_template('Friendsp.html', allPosts=allPosts)      

    else : return redirect('/gotologin')

#4 SPORTS
@app.route('/sports', methods = ['GET'])
def renderSports():
    cursor = mysql.connection.cursor()
    cursor.execute('''SELECT * FROM posts WHERE category = "Sports" ''')
    posts = cursor.fetchall()
    cursor.close()
    return render_template('Sports.html', posts=posts)

#5 FINANCE
@app.route('/finance', methods = ['GET'])
def renderFinance():
    cursor = mysql.connection.cursor()
    cursor.execute('''SELECT * FROM posts WHERE category = "Finance" ''')
    posts = cursor.fetchall()
    cursor.close()
    return render_template('Finance.html', posts=posts)

#6 STEM
@app.route('/stem', methods = ['GET'])
def renderStem():
    cursor = mysql.connection.cursor()
    cursor.execute('''SELECT * FROM posts WHERE category = "STEM" ''')
    posts = cursor.fetchall()
    cursor.close()
    return render_template('STEM.html', posts=posts)

#7 TRAVEL
@app.route('/travel', methods = ['GET'])
def renderTravel():
    cursor = mysql.connection.cursor()
    cursor.execute('''SELECT * FROM posts WHERE category = "Travel" ''')
    posts = cursor.fetchall()
    cursor.close()
    return render_template('Travel.html', posts=posts)

#8 ENTERTAINMENT
@app.route('/entertainment', methods = ['GET'])
def renderEnt():
    cursor = mysql.connection.cursor()
    cursor.execute('''SELECT * FROM posts WHERE category = "Entertainment" ''')
    posts = cursor.fetchall()
    cursor.close()
    return render_template('Entertainment.html', posts=posts)

#9 OTHERS
@app.route('/others', methods = ['GET'])
def renderOthers():
    cursor = mysql.connection.cursor()
    cursor.execute('''SELECT * FROM posts WHERE category = "Miscellaneous" ''')
    posts = cursor.fetchall()
    cursor.close()
    return render_template('Miscellaneous.html', posts=posts)

#####  from 4 to 9, many lines of code can be reduced by making a helper function

#10 ACCOUNT SETTINGS (redirect to login if not session)

@app.route('/settings', methods = ['GET'])
def settings():
    if session: return render_template('accountsettings.html')
    else: return redirect('/gotologin')

#11 Change username and password

@app.route('/change',methods=["POST"])
def change():
    cursor = mysql.connection.cursor()
    username = session['username']
    new_password = request.form.get('password')

    cursor.execute('''UPDATE users SET password=%s WHERE username=%s''',
                   (new_password, username))
    
    mysql.connection.commit()
    cursor.close()
    return redirect('/home')

#15 Login and logout
@app.route('/gotologin')
def gotologin():
    return render_template("login.html")


@app.route('/login', methods = ['POST'])
def login():
    username = request.form.get('username')
    password = request.form.get('password')

    cursor = mysql.connection.cursor()
    # username = session.get('username')
    cursor.execute('''SELECT * FROM users WHERE username = %s''', (username,))
    user = cursor.fetchone()

    if user and user[1] == password:
        if user[6] == "0":
            email=user[4]
            sender="parthpatto@gmail.com"
            custom_text="Hello, Your OTP to verify on mauve is "
            server = smtplib.SMTP('smtp.gmail.com',587)
            server.starttls()
            google_app_password = "vdaontrdrykabjpy"
            server.login(sender,google_app_password)
            otp = user[5]
            msg = custom_text +  otp
            server.sendmail(sender,email,msg)
            server.quit()
            return render_template('Verify.html',username = username)
        
        else:
            session['username'] = username
            # return session
            return redirect('/home')
    else:
        # return session
        return render_template('login.html', error='Invalid username and/or password')

@app.route('/logout', methods = ['GET'])
def logout():
    if session:
        del session['username']
    return redirect("/home")

#16 DELETE
@app.route('/delete', methods = ['GET'])
def delete():
    if session:
        cursor = mysql.connection.cursor()
        username=session['username']
        # username = session.get('username')
        cursor.execute('''DELETE FROM friends WHERE user1_id = %s''', (username,))
        cursor.execute('''DELETE FROM friends WHERE user2_id = %s''', (username,))
        cursor.execute('''DELETE FROM users WHERE username = %s''', (username,))
        del session['username']
        mysql.connection.commit()
        cursor.close()
    return redirect("/home")

@app.route('/register')
def reg() :
    return render_template('sign-up.html')

@app.route('/addUser', methods = ['POST'])
def user():
    cursor = mysql.connection.cursor()
    username = request.form.get('username')
    password = request.form.get('password')
    name = request.form.get('name')
    phone = request.form.get('phone')
    email = request.form.get('email')
    verified='0'


    cursor.execute('''SELECT * FROM users WHERE username = %s''', (username,))
    user = cursor.fetchone()
    if user is not None:
        mysql.connection.commit()
        cursor.close()
        return render_template('sign-up.html',error="Username already exists")

    sender="parthpatto@gmail.com"
    custom_text="Hello, Your OTP to verify on mauve is "
    server = smtplib.SMTP('smtp.gmail.com',587)
    server.starttls()
    google_app_password = "vdaontrdrykabjpy"
    server.login(sender,google_app_password)
    otp = str(randint(100000,999999))
    msg = custom_text +  otp
    server.sendmail(sender,email,msg)
    server.quit()


    cursor.execute('''INSERT INTO users (username, password, name, phone, email, otp, verified)
                      VALUES (%s, %s, %s, %s, %s, %s, %s)''',
                   (username, password, name, phone, email, otp, verified))
    mysql.connection.commit()
    cursor.close()
    # session['username'] = username
    return render_template('Verify.html',username = username)


@app.route('/verify/<username>', methods=['POST'])
def verify(username):
    otp = request.form.get('otp')

    # Get the user's data from the database
    cursor = mysql.connection.cursor()
    # username = session.get('username')
    cursor.execute('''SELECT * FROM users WHERE username = %s''', (username,))
    user = cursor.fetchone()

    if user and user[5] == otp:
        # If the OTP is correct, mark the user as verified in the database
        cursor.execute('''UPDATE users SET verified = 1 WHERE username = %s''', (username,))
        mysql.connection.commit()
        cursor.close()

        # Redirect to the home page
        session['username'] = username
        return redirect('/home')
    else:
        # If the OTP is incorrect, show an error message
        return render_template('Verify.html', username=username)


# @app.route('/')
# def home():
#     # Check if the user is logged in and verified
#     if 'username' in session:
#         username = session['username']
#         cursor = mysql.connection.cursor()
#         cursor.execute('''SELECT * FROM users WHERE username = %s''', (username,))
#         user = cursor.fetchone()
#         cursor.close()

# user and user[6] == 1
# 
    #     if user and user[6] == 1:
    #         # If the user is logged in and verified, show the home page
    #         return render_template('index.html', name=user[2])
    #     else:
    #         # If the user is logged in but not verified, redirect to the verification page
    #         return redirect(url_for('verify'))
    # else:
    #     # If the user is not logged
    #     return "ERROR: YOU CAN NOT ACCESS HOME WITHOUT LOGGING IN"


@app.route('/post')
def post():
    return render_template('CreatePost.html')

@app.route('/createPost', methods = ['POST'])
def createPost():
    cursor = mysql.connection.cursor()
    username = session['username']
    title = request.form.get('title')
    content = request.form.get('content')
    category = request.form.get('category')
    likes=0

    cursor.execute('''INSERT INTO posts (postedBy, title, content, category, likes)
                      VALUES (%s, %s, %s, %s, %s)''',
                   (username, title, content, category, likes))
    
    mysql.connection.commit()
    cursor.close()
    return redirect('/home')


@app.route('/viewPosts', methods = ['GET'])
def renderPosts():
    cursor = mysql.connection.cursor()
    cursor.execute("SELECT * FROM posts")
    posts = cursor.fetchall()
    cursor.close()
    return render_template('feed.html', posts=posts)


#12 MANAGE FRIENDS

@app.route('/manageFriends')
def manageFriend():
    cursor = mysql.connection.cursor()
    username=session['username']
    cursor.execute('''SELECT * FROM friends where user1_id = %s''',(username,))
    friends=cursor.fetchall()
    return render_template("managefriends.html",friends=friends)



@app.route('/addFriend',methods=["POST"])
def addFriend():
    cursor = mysql.connection.cursor()
    username=session['username']
    friendname = request.form.get('friendname')


    cursor.execute('''SELECT * FROM users WHERE username = %s''', (friendname,))
    friend = cursor.fetchone()
    if friend is None:
        return redirect('/manageFriends')

    # sender="parthpatto@gmail.com"
    # custom_text="Hello, Your OTP to verify on mauve is "
    # server = smtplib.SMTP('smtp.gmail.com',587)
    # server.starttls()
    # google_app_password = "vdaontrdrykabjpy"
    # server.login(sender,google_app_password)
    # otp = str(randint(100000,999999))
    # msg = custom_text +  otp
    # server.sendmail(sender,email,msg)
    # server.quit()


    cursor.execute('''INSERT INTO friends (user1_id, user2_id)
                      VALUES (%s, %s)''',
                   (username, friendname))
    cursor.execute('''INSERT INTO friends (user1_id, user2_id)
                      VALUES (%s, %s)''',
                   (friendname, username))
    mysql.connection.commit()
    cursor.close()
    # session['username'] = username
    return redirect('/manageFriends')

@app.route("/chats")
def chats():
    return render_template("Chats.html")

@app.route("/premium")
def premium():
    return render_template("Premium.html")

@app.route("/help")
def help():
    return render_template("Help.html")

@app.route('/removeFriend/<friendname>')
def removeFriend(friendname):
    cursor = mysql.connection.cursor()
    username=session['username']
    # friendname = request.form.get('friendname')


    cursor.execute('''DELETE FROM friends WHERE user1_id = %s AND user2_id = %s''', (username,friendname))
    cursor.execute('''DELETE FROM friends WHERE user1_id = %s AND user2_id = %s''', (friendname,username))

    # sender="parthpatto@gmail.com"
    # custom_text="Hello, Your OTP to verify on mauve is "
    # server = smtplib.SMTP('smtp.gmail.com',587)
    # server.starttls()
    # google_app_password = "vdaontrdrykabjpy"
    # server.login(sender,google_app_password)
    # otp = str(randint(100000,999999))
    # msg = custom_text +  otp
    # server.sendmail(sender,email,msg)
    # server.quit()

    mysql.connection.commit()
    cursor.close()
    # session['username'] = username
    return redirect('/manageFriends')

# @app.route('/verify')
# def verify():
#     otp = request.form.get('otp')
#     if 

# @app.route('/login')
# def login():
#     username = request.form.get('username')
#     password = request.form.get('password')
#     return [username, password]


# @app.route('')
# def 



if __name__ == '__main__':
    app.run()


        # Insert form data into database
        # conn = MySQL.connect('mauve')
        # conn.execute("INSERT INTO users (username, password, name, phone, email) VALUES (?, ?, ?, ?, ?)",
        #             (username, password, name, phone, email))
        # conn.commit()
        # conn.close()

        # server = smtplib.SMTP('smtp.mail.yahoo.com',587)
        # server.starttls()
        # server.login(sender_email,pswd)
        # cur_otp = str(randint(100000,999999))
        # msg = "Your OTP to sign in to Mauve is " +  cur_otp
        # server.sendmail(sender_email,email,msg)
        # server.quit()

    # return render_template('Verify.html')

# @app.route('/login', methods=['POST'])
# def login():
#     # Retrieve the user's credentials from the request
#     username = request.form['username']
#     password = request.form['password']

#     # Check if the user's credentials are valid (e.g. by querying a database)
#     if is_valid_user(username, password):
#         # If the credentials are valid, set the 'user_id' key in the session to the user's ID
#         session['user_id'] = get_user_id(username)
#         return 'Login successful'
#     else:
#         return 'Invalid credentials'

#     details = request.form

# @app.route('/user', methods=['GET', 'POST'])
# def index():
#     if request.method == "POST":
#         details = request.form
#         firstName = details['fname']
#         lastName = details['lname']
#         cur = mysql.connection.cursor()
#         cur.execute("INSERT INTO MyUsers(firstName, lastName) VALUES (%s, %s)", (firstName, lastName))
#         mysql.connection.commit()
#         cur.close()
#         return 'success'
#     return render_template('index.html')



    