# Ansible Role: <<APPLICATION>>

[![Build Status](https://travis-ci.com/cloudalchemy/ansible-<<APPLICATION>>.svg?branch=master)](https://travis-ci.com/cloudalchemy/ansible-<<APPLICATION>>)
[![License](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg)](https://opensource.org/licenses/MIT)
[![Ansible Role](https://img.shields.io/badge/ansible%20role-cloudalchemy.<<APPLICATION>>-blue.svg)](https://galaxy.ansible.com/cloudalchemy/<<APPLICATION>>/)
[![GitHub tag](https://img.shields.io/github/tag/cloudalchemy/ansible-<<APPLICATION>>.svg)](https://github.com/cloudalchemy/ansible-<<APPLICATION>>/tags)

## Description

Deploy [<<APPLICATION>>](https://github.com/prometheus/<<APPLICATION>>) using ansible.

## Requirements

- Ansible >= 2.7 (It might work on previous versions, but we cannot guarantee it)

## Role Variables

All variables which can be overridden are stored in [defaults/main.yml](defaults/main.yml) file as well as in table below.

| Name           | Default Value | Description                        |
| -------------- | ------------- | -----------------------------------|
| `<<APPLICATION>>_web_listen_address` | "0.0.0.0:<<PORT>>" | Address on which <<APPLICATION>> will listen |

## Example

### Playbook

Use it in a playbook as follows:
```yaml
- hosts: all
  roles:
    - cloudalchemy.<<APPLICATION>>
```

## Local Testing

The preferred way of locally testing the role is to use Docker and [molecule](https://github.com/ansible-community/molecule) (v3.x). You will have to install Docker on your system. See "Get started" for a Docker package suitable to for your system. Running your tests is as simple as executing `molecule test`.

## Continuous Intergation

Combining molecule and circle CI allows us to test how new PRs will behave when used with multiple ansible versions and multiple operating systems. This also allows use to create test scenarios for different role configurations. As a result we have a quite large test matrix which can take more time than local testing, so please be patient.

## Contributing

See [contributor guideline](CONTRIBUTING.md).

## Troubleshooting

See [troubleshooting](TROUBLESHOOTING.md).

## License

This project is licensed under MIT License. See [LICENSE](/LICENSE) for more details.
