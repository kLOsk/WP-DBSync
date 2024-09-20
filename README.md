# WP DB Sync Script

This repository contains a script to synchronize WordPress databases between local and remote environments using `wp-cli`. It serves as an alternative to the broken functionality of WordMove's database push/pull feature and works alongside WordMove's Movefile.

For more information on WordMove, visit the [WordMove repository](https://github.com/welaika/wordmove).

## Requirements

- **wp-cli**: Ensure `wp-cli` is installed and properly configured on both local and remote environments.
- **SSH Key-based Authentication**: The script requires SSH key-based authentication for secure connections. Password logins are not supported.

## Installation

To install the `wp-dbsync` script, run the following command:

```sh
sudo ./installer.sh
```

## Usage

After installation, you can use the `wp-dbsync` command as follows:

```sh
wp-dbsync {push|pull} {environment_name}
```

- `{push|pull}`: Specify whether you want to push to or pull from the environment.
- `{environment_name}`: The name of the environment (must be defined in the Movefile and not be `local`).

## Example

```sh
wp-dbsync pull staging
```

## License

This project is licensed under the MIT License.
