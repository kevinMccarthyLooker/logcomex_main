connection: "aereo_api"

#esse modelo foi criado pois o usuario da conexao possui permissoes para acessar o schema api

include: "/**/recintos_aduaneiros_customers.view.lkml"                # include all views in the views/ folder in this project

explore: recintos_aduaneiros_customers {}
