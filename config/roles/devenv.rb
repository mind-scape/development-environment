name "devenv"
description "Configure development environment"

run_list *[
  'recipe[basics]',
  'recipe[environment]'
]
