# Vonage cURL Examples

<img src="https://developer.nexmo.com/assets/images/Vonage_Nexmo.svg" height="48px" alt="Nexmo is now known as Vonage" />

This repository is a collection of cURL code snippets, demonstrating the functionality of the [Vonage APIs](https://developer.nexmo.com). The code snippets are used in the developer documentation, such as in [Send a Unicode SMS](https://developer.nexmo.com/messaging/sms/code-snippets/send-an-sms-with-unicode).

## Pre-requisites

You will need [cURL](https://curl.haxx.se/) installed.

If you don't have a Vonage API account, you'll need to [create one](https://dashboard.nexmo.com/sign-up)!

### Snippets That Use a JWT

Some use JWT for authentication. These snippets will `source` the `jwt.sh` file, and the cURL request will contain the following header:

```curl
-H 'Authorization: Bearer '$JWT
```

The `jwt.sh` file will generate a JWT for you using the values from the `VONAGE_APPLICATION_ID` and `VONAGE_PRIVATE_KEY` in your `config.sh` file. In order for `jwt.sh` to function, you must have the [Vonage CLI](https://github.com/vonage/vonage-cli) installed locally. You can install it in the following way:

```
npm install -g @vonage/cli
```

## Configuration

You can find the API key and secret for your configuration settings in your [Dashboard](https://dashboard.nexmo.com).

This repository contains a main configuration file `config.sh` that is referenced by the code snippets. You can directly edit the `config.sh` file to add your information. Alternatively, you can create a `config.local.sh` file, which overrides the main configuration file. This allows you to keep your specific information separate from the main configuration.

Note: If you copy `config.sh` to `config.local.sh` make sure to remove the following lines from the bottom of the `config.local.sh` file:

```bash
CONFIG_DIR=$(dirname "${BASH_SOURCE[0]}")
if [ -f "$CONFIG_DIR/config.local.sh" ]; then
    source "$CONFIG_DIR/config.local.sh"
fi
```

Some APIs use JWT authentication. For these, an Application ID and Private Key will be needed instead of you API key and secret. You can create a Vonage Application in the [Dashboard](https://dashboard.nexmo.com/applications) in order to generate the Application ID and Private Key.

### Setting the Private Key Variable

When setting the `VONAGE_PRIVATE_KEY` environement variable, copy your `private.key` file to the root directory and use an absolute path for the variable value, e.g. `"/home/user/private.key"`

## Run the code snippets

As each code snippet requires access to the configuration files, you must run them from the directory they reside in, for example:

``` shell
cd messaging/sms/
./send-an-sms.sh
```

## Get in touch

Questions and comments are welcome!

You can create an issue on this repository. Patches are also very welcome, please go ahead and send us fixes or additional code snippets by opening a pull request.
