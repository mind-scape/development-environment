name "devenv"
description "Configure development environment, in order to do packaging and development of MindScape"

run_list *[
  'recipe[basics]'
]
