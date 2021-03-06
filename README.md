# Script for adding a license to your project quickly and easily
## No need to copy & paste anymore!

[![MIT License](https://img.shields.io/github/license/peter-stuhlmann/QuicklyAddLicenses.svg)](https://github.com/peter-stuhlmann/QuicklyAddLicenses/blob/master/LICENSE) 
![Code size](https://img.shields.io/github/languages/code-size/peter-stuhlmann/QuicklyAddLicenses.svg)
[![open issues](https://img.shields.io/github/issues/peter-stuhlmann/QuicklyAddLicenses.svg)](https://github.com/peter-stuhlmann/QuicklyAddLicenses/issues?q=is%3Aopen+is%3Aissue)
[![closed issues](https://img.shields.io/github/issues-closed/peter-stuhlmann/QuicklyAddLicenses.svg)](https://github.com/peter-stuhlmann/QuicklyAddLicenses/issues?q=is%3Aissue+is%3Aclosed)

> With this shell script you can easily add a license of your choice to your project. For this, a commit ```'Add license'``` is created automatically.

## How to use it

### Syntax

```
$ <ABSOLUTE PATH>/license.sh -<type of license>
```

Example:
```
$ /home/max-mustermann/QuicklyAddLicenses/license.sh -MIT
```

*There is an easier way: save the path to the script as an alias in your .bashrc - then you could start the script with a simple command like this:*
```
$ license -MIT
```

**Please make sure you have an internet connection when running this script.**

## Recommendation for set up: 
1. Clone this repository in a directory of your choice.
2. Edit your .bashrc (in home directory) and add an alias to start the script:   
    ```alias license='<ABSOLUTE PATH>/license.sh'```
3. Use the following command to grant rights to use the script (once only):

```
$ chmod +x license.sh
```
For this command, either change to the directory where the script is located or specify the appropriate path to the bash script file.

_Now you can use this script in every directory. While running the script, you will be prompted for your name, which will be written to the chosen license. If you do not comply with the correct syntax you will get an info message._

### Choose a license

With these flags you can determine the type of the license:

- Apache License 2.0 ```-APC2.0```   
- BSD 2-Clause "Simplified" License ```-BSD2```    
- BSD 3-Clause "New" or "Revised" License ```-BSD3```   
- Eclipse Public License 2.0 ```-ECL```   
- GNU Affero General Public License v3.0 ```-GNUA3.0```   
- GNU General Public License v2.0 ```-GNU2.0```
- GNU General Public License v3.0 ```-GNU3.0```
- GNU Lesser General Public License v2.1 ```-GNUL2.1```
- GNU Lesser General Public License v3.0 ```-GNUL3.0``` 
- MIT License ```-MIT```
- Mozilla Public License 2.0 ```-MOZ```
- The Unlicense ```-UNL```

---

## License

Licensed under the [MIT](https://github.com/peter-stuhlmann/QuicklyAddLicenses/blob/master/LICENSE) License.   

---

[&copy; Peter R. Stuhlmann Webentwicklung](https://peter-stuhlmann-webentwicklung.de). All rights reserved.