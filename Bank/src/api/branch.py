from flask import Blueprint, jsonify, abort, request
from ..models import Branch, db

bp = Blueprint('branch', __name__, url_prefix='/branch')

@bp.route('', methods=['GET'])
def index():
    branch = Branch.query.all()
    result = []
    for b in branch:
        result.append(b.serialize())
    return jsonify(result)

@bp.route('/<int:id>', methods=['GET'])
def show(id: int):
    b = Branch.query.get_or_404(id)
    return jsonify(b.serialize())


@bp.route('', methods=['POST'])
def create():
    if 'name' not in request.json or 'address' not in request.json:
        return abort(400)

    b = Branch(
        id=request.json['id'],
        name=request.json['name'],
        address=request.json['address'],
    )
    db.session.add(b)
    db.session.commit()

    return jsonify(b.serialize())

@bp.route('/<int:id>', methods=['DELETE'])
def delete(id: int):
    b = Branch.query.get_or_404(id)

    try:
        db.session.delete(b)
        db.session.commit()
        return jsonify(True)
    except:
        return jsonify(False)

@bp.route('/<int:id>', methods=['PATCH', 'PUT'])
def update(id: int):
    b = Branch.query.get_or_404(id)
    if 'name' in request.json:
        b.name = request.json['name']
    if 'address' in request.json:
        b.address = request.json['address']
    db.session.commit()
    return jsonify(b.serialize())
