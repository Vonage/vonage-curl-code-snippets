# Vonage cURL Examples

<img src="https://developer.nexmo.com/assets/images/Vonage_Nexmo.svg" height="48px" alt="Nexmo is now known as Vonage" />

This repository is a collection of cURL code snippets, demonstrating the functionality of the [Vonage APIs](https://developer.nexmo.com). The code snippets are used in the developer documentation, such as in [Send a Unicode SMS](https://developer.nexmo.com/messaging/sms/code-snippets/send-an-sms-with-unicode).

## Pre-requisites

You will need [cURL](https://curl.haxx.se/) installed.

If you don't have a Vonage API account, you'll need to [create one](https://dashboard.nexmo.com/sign-up)! 

## Configuration

You can find the API key and secret for your configuration settings in your [Dashboard](https://dashboard.nexmo.com).

This repository contains a main configuration file `config.sh` that is referenced by the code snippets. You can directly edit the `config.sh` file to add your information. Alternatively, you can create a `config.local.sh` file, which overrides the main configuration file. This allows you to keep your specific information separate from the main configuration.

## Run the code snippets

As each example requires access to the configuration files, you must run them from the directory they reside in, for example:

```
cd messaging/sms/
./send-an-sms.sh
```

## Get in touch

Questions and comments are welcome! 

You can create an issue on this repository. Patches are also very welcome, please go ahead and send us fixes or additional examples by opening a pull request.

