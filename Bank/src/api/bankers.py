from flask import Blueprint, jsonify, abort, request
from ..models import Banker, db

bp = Blueprint('bankers', __name__, url_prefix='/bankers')

@bp.route('', methods=['GET'])
def index():
    bankers = Banker.query.all()
    result = []
    for b in bankers:
        result.append(b.serialize())
    return jsonify(result)

@bp.route('/<int:id>', methods=['GET'])
def show(id: int):
    b = Banker.query.get_or_404(id)
    return jsonify(b.serialize())


@bp.route('', methods=['POST'])
def create():
    if 'first_name' not in request.json or 'last_name' not in request.json or 'address' not in request.json:
        return abort(400)

    b = Banker(
        first_name=request.json['first_name'],
        last_name=request.json['last_name'],
        address=request.json['address'],
        branch_id=request.json['branch_id']
    )
    db.session.add(b)
    db.session.commit()

    return jsonify(b.serialize())

@bp.route('/<int:id>', methods=['DELETE'])
def delete(id: int):
    b = Banker.query.get_or_404(id)

    try:
        db.session.delete(b)
        db.session.commit()
        return jsonify(True)
    except:
        return jsonify(False)

@bp.route('/<int:id>', methods=['PATCH', 'PUT'])
def update(id: int):
    b = Banker.query.get_or_404(id)
    if 'first_name' in request.json:
        b.first_name = request.json['first_name']
    if 'last_name' in request.json:
        b.last_name = request.json['last_name']
    if 'address' in request.json:
        b.address = request.json['address']
    if 'email' in request.json:
        b.branch_id = request.json['branch_id']
    db.session.commit()
    return jsonify(b.serialize())

