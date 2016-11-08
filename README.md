# far-cry

This is a small Ruby library to send extracted json data from Federal
Acquisition Regulations to the prototype
[far-flung-genius](https://github.com/18F/far-flung-genius)

It uses the Ruby gem [so_far_so_good](https://rubygems.org/gems/so_far_so_good/versions/1.2.0) which contains the data and does the extraction.

## Contributing

See [CONTRIBUTING](CONTRIBUTING.md) for additional information.

## Usage

Get the dependencies:

    gem install bundler
    bundle install

The application determines where to send the data via environmental
variables. Also the library uses a shared secret as the API protection
method. Two environmental variables are required. To use it locally
setup a `.env` file.

    cp .env-sample .env

You will then want to change the values to match the url and shared API
secret.

Running the code:

    LOCAL=true bundle console
    # Above will open an IRB session, so that you can run the code
    > require File.dirname(__FILE__) + '/far_cry'
    > FarCry.bulk_send

When things go wrong, the error message is written to a log at
`far_cry.log`.

## Public domain

This project is in the worldwide [public domain](LICENSE.md). As stated in [CONTRIBUTING](CONTRIBUTING.md):

> This project is in the public domain within the United States, and copyright and related rights in the work worldwide are waived through the [CC0 1.0 Universal public domain dedication](https://creativecommons.org/publicdomain/zero/1.0/).
>
> All contributions to this project will be released under the CC0 dedication. By submitting a pull request, you are agreeing to comply with this waiver of copyright interest.

