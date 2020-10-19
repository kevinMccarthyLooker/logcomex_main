connection: "db"

include: "/**/jira_tasks.view.lkml"                # include all views in the views/ folder in this project


explore: jira_tasks{}
