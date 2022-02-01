# Bank Database

This project includes:

* Enity Relationship Diagram

* Request using Insomnia

* Creation of database using models.py

* Pg_dump.Sql

## Technologies used to develop the project

* Docker
* PostgreSQL
* pgadmin 4
* Insomnia
* Flask SQAlchemy
* venv

## API Reference Table
Customers API
| Name | HTTP Method | Parameter | Desciption | 
|------|-------------|-----------|------------|
| Index| GET | http://localhost:5000/customers | Show all records in customers table. |
| Show | GET | http://localhost:5000/customers/id | show customer for input id |
| Create | POST| http://localhost:5000/customers | Create customer |
| Delete | DEL | http://localhost:5000/customer/id | Delete customer |
| Update | PUT | http://localhost:5000/customer/id | Update customer for input id |

Accounts API
| Name | HTTP Method | Parameter | Desciption | 
|------|-------------|-----------|------------|
| Index| GET | http://localhost:5000/accounts | Show all records in accounts table. |
| Show | GET | http://localhost:5000/accounts/id | show account for input id |
| Create | POST | http://localhost:5000/accounts | Create account |
| Delete | DEL | http://localhost:5000/accounts/id | Delete account |
| Update | PUT | http://localhost:5000/accounts/id| Update account for input id |

Bankers API
| Name | HTTP Method | Parameter | Desciption | 
|------|-------------|-----------|------------|
| Index| GET | http://localhost:5000/bankers | Show all records in bankers table. |
| Show | GET | http://localhost:5000/bankers/id | show banker for input id |
| Create | POST | http://localhost:5000/bankers | Create banker |
| Delete | DEL | http://localhost:5000/bankers/id  | Delete banker |
| Update | PUT | http://localhost:5000/bankers/id  | Update banker for input id |

Branch API
| Name | HTTP Method | Parameter | Desciption | 
|------|-------------|-----------|------------|
| Index| GET | http://localhost:5000/branch | Show all records in branch table. |
| Show | GET | http://localhost:5000/branch/id | show branch for input id |
| Create | POST | http://localhost:5000/branch | Create branch |
| Delete | DEL | http://localhost:5000/branch/id | Delete branch |
| Update | PUT | http://localhost:5000/branch/id | Update branch for input id |









 
