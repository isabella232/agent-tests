echo | cat << EOF
steps:
  - command: lint.sh
  - wait
  - command: tests.sh
  - block: "Deploy to production"
  - command: deploy.sh
EOF
