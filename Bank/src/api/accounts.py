from flask import Blueprint, render_template, current_app, jsonify, abort, request
from flask import current_app as app

from ..models import Account, db
import hashlib
import secrets
import sqlalchemy


def scramble(password: str):
    """Hash and salt the given password"""
    salt = secrets.token_hex(16)
    return hashlib.sha512((password + salt).encode('utf-8')).hexdigest()


bp = Blueprint('accounts', __name__, url_prefix='/accounts')


@bp.route('', methods=['GET'])
def index():
    accounts = Account.query.all()
    accounts = [a.serialize() for a in accounts]
    return jsonify(accounts)

@bp.route('/<int:id>', methods=['GET'])
def show(id: int):
    a = Account.query.get_or_404(id)
    return jsonify(a.serialize())


@bp.route('', methods=['POST'])
def create():
    if 'username' not in request.json or 'password' not in request.json:
        return abort(400)

    a = Account(
        id=request.json['id'],
        type=request.json['type'],
        balance=request.json['balance'],
        username=request.json['username'],
        password=scramble(request.json['password']),
        customer_id=request.json['customer_id']
    )

    db.session.add(a)
    db.session.commit()

    return jsonify(a.serialize())


@bp.route('/<int:id>', methods=['DELETE'])
def delete(id: int):
    a = Account.query.get_or_404(id)

    try:
        db.session.delete(a)
        db.session.commit()
        return jsonify(True)
    except:
        return jsonify(False)


@bp.route('/<int:id>', methods=['PATCH', 'PUT'])
def update(id: int):
    a = Account.query.get_or_404(id)
    if 'username' in request.json:
        a.username = request.json['username']
    if 'password' in request.json:
        a.password = request.json['password']
    db.session.commit()
    return jsonify(a.serialize())



