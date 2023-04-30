import unittest
from flask import Flask, session
from flask_testing import TestCase
from app import app, mysql

class TestAddPost(TestCase):

    def create_app(self):
        app.config['TESTING'] = True
        app.config['MYSQL_DATABASE_HOST'] = 'localhost'
        app.config['MYSQL_DATABASE_USER'] = 'test_user'
        app.config['MYSQL_DATABASE_PASSWORD'] = 'test_password'
        app.config['MYSQL_DATABASE_DB'] = 'test_db'
        return app
    
    def test_login(self):
        

    # def setUp(self):
    #     self.client = self.app.test_client()
    #     with self.app.app_context():
    #         cursor = mysql.connection.cursor()
    #         cursor.execute('DROP TABLE IF EXISTS posts')
    #         cursor.execute('''CREATE TABLE posts
    #                           (id INT NOT NULL AUTO_INCREMENT,
    #                            postedBy VARCHAR(255),
    #                            title VARCHAR(255),
    #                            content TEXT,
    #                            category VARCHAR(255),
    #                            likes INT,
    #                            PRIMARY KEY (id))''')
    #         mysql.connection.commit()
    #         cursor.close()

    # def test_add_post(self):
    #     with self.client:
    #         with self.app.app_context():
    #             session['username'] = 'test_user'
    #             response = self.client.post('/addPost',
    #                                         data=dict(title='Test Post',
    #                                                   content='This is a test post.',
    #                                                   category='test'),
    #                                         follow_redirects=True)
    #             self.assert200(response)
    #             cursor = mysql.connection.cursor()
    #             cursor.execute('''SELECT * FROM posts WHERE postedBy=%s AND title=%s''',
    #                            ('test_user', 'Test Post'))
    #             post = cursor.fetchone()
    #             cursor.close()
    #             self.assertIsNotNone(post)
    #             self.assertEqual(post[1], 'test_user')
    #             self.assertEqual(post[2], 'Test Post')
    #             self.assertEqual(post[3], 'This is a test post.')
    #             self.assertEqual(post[4], 'test')
    #             self.assertEqual(post[5], 0)

if __name__ == '__main__':
    unittest.main()
