import unittest
from flask import Flask, session
from flask_testing import TestCase
from app import app, mysql

class TestAddPost(TestCase):

    def create_app(self):
        app.config['TESTING'] = True
        app.config['MYSQL_HOST'] = 'localhost'
        app.config['MYSQL_USER'] = 'bros'
        app.config['MYSQL_PASSWORD'] = 'Cop290@iitd'
        app.config['MYSQL_DB'] = 'mauve'
        return app

    def test_get_users(self):
        with app.test_client() as client:
            response = client.get('/home')
            self.assertEqual(response.status_code, 200)

    def test_goto_posts(self):
        with app.test_client() as client:
            response = client.get('/gotoPost')
            self.assertEqual(response.status_code, 200)

    def test_addUser(self):
        with app.test_client() as client:
            response = client.post('/addUser', data={'username' : 'username','password' : 'password','name' : 'name','phone' : 'phone','email' : 'ajmeraraghv99@gmail.com'})
            self.assertEqual(response.status_code, 200)

    def test_friendsPosts(self):
        with app.test_client() as client:
            response = client.get('/friends')
            self.assertEqual(response.status_code, 200)
    
    def test_sports(self):
        with app.test_client() as client:
            response = client.get('/sports')
            self.assertEqual(response.status_code, 200)

    def test_finance(self):
        with app.test_client() as client:
            response = client.get('/finance')
            self.assertEqual(response.status_code, 200)

    def test_stem(self):
        with app.test_client() as client:
            response = client.get('/stem')
            self.assertEqual(response.status_code, 200)

    def test_travel(self):
        with app.test_client() as client:
            response = client.get('/travel')
            self.assertEqual(response.status_code, 200)

    def test_entertainment(self):
        with app.test_client() as client:
            response = client.get('/entertainment')
            self.assertEqual(response.status_code, 200)

    def test_others(self):
        with app.test_client() as client:
            response = client.get('/others')
            self.assertEqual(response.status_code, 200)

    def test_settings(self):
        with app.test_client() as client:
            response = client.get('/settings')
            self.assertEqual(response.status_code, 200)

    def test_changePassword(self):
        with app.test_client() as client:
            response = client.post('/change', data={'new_password': 'newpass'})
            self.assertEqual(response.status_code, 302)

    def test_abort(self):
        with app.test_client() as client:
            response = client.get('/abort')
            self.assertEqual(response.status_code, 302)

    def test_login(self):
        with app.test_client() as client:
            response = client.post('/login', data = {'username':'Mathevil', 'password':'cop290'})
            self.assertEqual(response.status_code, 200)
    def test_login_fail(self):
        with app.test_client() as client:
            response = client.post('/login', data = {'username':'Dummy', 'password':'cop290'})
            self.assertEqual(response.status_code, 200)

    def test_addFriend(self):
        with app.test_client() as client:
            response = client.post('/addFriend', data = {'friendname':'shikigami'}) 
            self.assertEqual(response.status_code, 302)

    def test_manage_friends_notfound(self):
        with app.test_client() as client:
            response = client.post('/manageFriends') 
            self.assertEqual(response.status_code, 405)

if __name__ == '__main__':
    unittest.main()
