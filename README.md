# Script for easily and quickly adding a license to your project
## No need to copy & paste anymore!

[![MIT License](https://img.shields.io/github/license/peter-stuhlmann/QuicklyAddLicenses.svg)](https://github.com/peter-stuhlmann/QuicklyAddLicenses/blob/master/LICENSE) 
![Code size](https://img.shields.io/github/languages/code-size/peter-stuhlmann/QuicklyAddLicenses.svg)
[![open issues](https://img.shields.io/github/issues/peter-stuhlmann/QuicklyAddLicenses.svg)](https://github.com/peter-stuhlmann/QuicklyAddLicenses/issues?q=is%3Aopen+is%3Aissue)
[![closed issues](https://img.shields.io/github/issues-closed/peter-stuhlmann/QuicklyAddLicenses.svg)](https://github.com/peter-stuhlmann/QuicklyAddLicenses/issues?q=is%3Aissue+is%3Aclosed)

---
> With this shell script you can easily add a license of your choice to your project. For this, a commit ```'Add license'``` is created automatically.
---

## Syntax

```
$ license -<type of license>
```

Example:
```
$ license -MIT
```

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

## How to use it

Recommendation: 
1. Clone this repository in a directory of your choice.
2. Edit your .bashrc (in home directory) and add an alias to start the script:   
    ```alias license='<ABSOLUTE PATH>/license.sh'```

Now you can use this script in every directory.

---

## License

Licensed under the [MIT](https://github.com/peter-stuhlmann/QuicklyAddLicenses/blob/master/LICENSE) License.   

---

[&copy; Peter R. Stuhlmann Webentwicklung](https://peter-stuhlmann-webentwicklung.de). All rights reserved.