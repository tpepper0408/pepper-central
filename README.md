# Pepper Central

## About

**Pepper Central is the personal blog of Tim Pepper. Topics include Diversity and Inclusion in Tech, Philosophy and Software Engineering.**

## Installation

Follow the instructions found here to install the pre-requisites to build the Jekyll site including Jekyll and Bundler:
- [macOS](https://jekyllrb.com/docs/installation/macos/)
- [ubuntu](https://jekyllrb.com/docs/installation/ubuntu/)
- [Other linux](https://jekyllrb.com/docs/installation/other-linux/)
- [Windows](https://jekyllrb.com/docs/installation/windows/)

Once you've installed Jekyll and Bundler you can run the following to install the dependencies for the project:
```
bundle install
```

Once installed you can follow these commands to run the site locally in dev mode:
```
bundle exec jekyll serve
```

You can build the website to the standard output folder `/docs` using the command:
```
bundle exec jekyll build
```

## Configuration

### Site settings (TODO)

Google Analytics can be enabled via the site configuration too. Add your tracking ID to the `/_config.yml` file in the following method: `google_analytics: 'UA-XXXXXXXX-1'`. By default all IPs of site visitors are anonymous to maintain a level of privacy for the audience. If you wish to turn this off set the `google_analytics_anonymize_ip` key to `false`.

Date format can be customised in the `/_config.yml` with the option `date_format` (please refer to Liquid date filters documentation for learning about formatting possibilities). Only placeholder formatting is supported, do not try to use ordinal dates introduced in Jekyll 3.8.

The `short_name` option within `/_config.yml` is to add a custom name to the site's web application counterpart. When the website is added to a device this name will appear alonside the app icon. The short name will default to the site title if this isn't set.