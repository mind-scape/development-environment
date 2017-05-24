name "packager"
description "Configure development environment for packaging"

run_list *[
  'recipe[basics]',
  'recipe[packager]'
]
