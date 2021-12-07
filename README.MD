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
| Index| GET | {{base_url}}/customers | Show all records in customers table. |
| Show | GET | {{base_url}}/customers/id | show customer for input id |
| Create | POST| {{base_url}}/customers | Create customer |
| Delete | DEL | {{base_url}}/customer/id | Delete customer |
| Update | PUT | {{base_url}}/customer/id | Update customer for input id |

Accounts API
| Name | HTTP Method | Parameter | Desciption | 
|------|-------------|-----------|------------|
| Index| GET | {{base_url}}/accounts | Show all records in accounts table. |
| Show | GET | {{base_url}}/accounts/id | show account for input id |
| Create | POST | {{base_url}}/accounts | Create account |
| Delete | DEL | {{base_url}}/accounts/id | Delete account |
| Update | PUT | {{base_url}}/accounts/id| Update account for input id |

Bankers API
| Name | HTTP Method | Parameter | Desciption | 
|------|-------------|-----------|------------|
| Index| GET | {{base_url}}/bankers | Show all records in bankers table. |
| Show | GET | {{base_url}}/bankers/id | show banker for input id |
| Create | POST | {{base_url}}/bankers | Create banker |
| Delete | DEL | {{base_url}}/bankers/id  | Delete banker |
| Update | PUT | {{base_url}}/bankers/id  | Update banker for input id |

Branch API
| Name | HTTP Method | Parameter | Desciption | 
|------|-------------|-----------|------------|
| Index| GET | {{base_url}}/branch | Show all records in branch table. |
| Show | GET | {{base_url}}/branch/id | show branch for input id |
| Create | POST | {{base_url}}/branch | Create branch |
| Delete | DEL | {{base_url}}/branch/id | Delete branch |
| Update | PUT | {{base_url}}/branch/id | Update branch for input id |









 
