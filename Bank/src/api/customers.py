from flask import Blueprint, jsonify, abort, request
from ..models import Customer, db

bp = Blueprint('customers', __name__, url_prefix='/customers')


@bp.route('', methods=['GET'])
def index():
    customers = Customer.query.all()
    result = []
    for c in customers:
        result.append(c.serialize())
    return jsonify(result)


@bp.route('/<int:id>', methods=['GET'])
def show(id: int):
    c = Customer.query.get_or_404(id)
    return jsonify(c.serialize())


@bp.route('', methods=['POST'])
def create():
    if 'first_name' not in request.json or 'last_name' not in request.json or 'phone_number' not in request.json:
        return abort(400)

    c = Customer(
        first_name=request.json['first_name'],
        last_name=request.json['last_name'],
        phone_number=request.json['phone_number'],
        email=request.json['email']
    )
    db.session.add(c)
    db.session.commit()

    return jsonify(c.serialize())

@bp.route('/<int:id>', methods=['DELETE'])
def delete(id: int):
    c = Customer.query.get_or_404(id)

    try:
        db.session.delete(c)
        db.session.commit()
        return jsonify(True)
    except:
        return jsonify(False)

@bp.route('/<int:id>', methods=['PATCH', 'PUT'])
def update(id: int):
    c = Customer.query.get_or_404(id)
    if 'first_name' in request.json:
        c.first_name = request.json['first_name']
    if 'last_name' in request.json:
        c.last_name = request.json['last_name']
    if 'phone_number' in request.json:
        c.phone_number = request.json['phone_number']
    if 'email' in request.json:
        c.email = request.json['email']
    db.session.commit()
    return jsonify(c.serialize())

