# Redmine CLF2 Plugin

This plugin makes use of the HTML5 core markup templates from the
Government of Canada's Web Experience Toolkit in order to implement
the Common Look and Feel Standards for the Internet 2.0 put forth by
the Treasury Board of Canada Secretariat.

This module includes a theme implementing the CLF spec as far as
layout goes, but also implements multilingual and accessibility
support features.

Note that there is a lot of stuff specific to the Intellectual
Resources Canada project in here, so if you're hoping for a more
generic implementation of the CLF 2 spec for ChiliProject/Redmine,
you're going to have to cherry-pick what you want.  Expect to fork.

# Installation

In spite of the name, this project is currently developed against
ChiliProject 2.2.

Place this directory in `vendor/plugins` of your ChiliProject.  I
recommend using a git submodule.

Edit `config/subdomains.yml` to taste.

## Terms and Conditions of Use

The Canada wordmark and related graphics associated with this
distribution are protected under trademark law and copyright law. No
permission is granted to use them outside the parameters of the
Government of Canada's corporate identity program. For more
information, see http://www.tbs-sct.gc.ca/fip-pcim/index-eng.asp

Copyright title to all 3rd party software distributed with this
software is held by the respective copyright holders as noted in those
files. Users are asked to read the 3rd Party Licenses referenced with
those assets.

## MIT License

Copyright (c) 2011 Government of Canada

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
