from flask_sqlalchemy import SQLAlchemy


db = SQLAlchemy()


class Customer(db.Model):
    __tablename__ = 'customers'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    first_name = db.Column(db.String(20), nullable=False)
    last_name = db.Column(db.String(20), nullable=False)
    phone_number = db.Column(db.String(20), nullable=False)
    email = db.Column(db.String(40), unique=True)

    def __init__(self, first_name: str, last_name: str, phone_number: str, email: str):
        self.first_name = first_name
        self.last_name = last_name
        self.phone_number = phone_number
        self.email = email

    def serialize(self):
        return {
            'id': self.id,
            'first_name': self.first_name,
            'last_name': self.last_name,
            'phone_number': self.phone_number,
            'email': self.email
        }


class Account(db.Model):
    __tablename__ = 'accounts'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    type = db.Column(db.String(20), nullable=False)
    balance = db.Column(db.Integer, nullable=False)
    username = db.Column(db.String(20), unique=True, nullable=False)
    password = db.Column(db.String(40), unique=True)
    customer_id = db.Column(db.Integer, db.ForeignKey(
        'customers.id'), nullable=False)
    
    def __init__(self, id:int, type: str, balance: float, username: str, password: str,customer_id: int):
            self.id = id
            self.type = type
            self.balance = balance
            self.username = username
            self.password = password
            self.customer_id = customer_id
            
    def serialize(self):
            return {
                'id': self.id,
                'type': self.type,
                'balance': self.balance,
                'username': self.username,
                'customer_id': self.customer_id    
            }
account_branch = db.Table(
    'account_branch',
    db.Column(
        'accounts_id', db.Integer,
        db.ForeignKey('accounts.id'),
        primary_key=True
    ),

    db.Column(
        'branch_id', db.Integer,
        db.ForeignKey('branch.id'),
        primary_key=True
    ),
)

class Branch(db.Model):
    __tablename__ = 'branch'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    name = db.Column(db.String(128), nullable=False)
    address = db.Column(db.String(128), nullable=False)

    def __init__(self, name: str, address: str):
        self.name = name
        self.address = address
        
    def serialize(self):
            return {
                'id': self.id,
                'name': self.name,
                'address': self.address,
            }

class Banker(db.Model):
    __tablename__ = 'bankers'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    first_name = db.Column(db.String(20), nullable=False)
    last_name = db.Column(db.String(20), nullable=False)
    address = db.Column(db.String(20), unique=True, nullable=False)
    branch_id = db.Column(db.Integer, db.ForeignKey(
        'branch.id'), nullable=False)
    
    def __init__(self, first_name: str, last_name: str, address: str, branch_id: str):
        self.first_name = first_name
        self.last_name = last_name
        self.address = address
        self.branch_id = branch_id
            
    def serialize(self):
            return {
                'id': self.id,
                'first_name': self.first_name,
                'last_name': self.last_name,
                'address': self.address,
                'branch_id': self.branch_id
            }