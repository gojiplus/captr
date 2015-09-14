### captr: R Client for the Captricity API

[![GPL-3.0](http://img.shields.io/:license-gpl-blue.svg)](http://opensource.org/licenses/GPL-3.0)
[![Build Status](https://travis-ci.org/soodoku/captr.svg?branch=master)](https://travis-ci.org/soodoku/captr)

OCR text and handwritten forms via [https://captricity.com/](https://captricity.com/).

### Installation

To get the current development version from GitHub:

```{r install}
install.packages("devtools")
devtools::install_github("soodoku/captr")
```

-------------------
### Using captr

Start by getting an application token and setting it using:

```{r set_token}
set_token("token")
```

Then, create a batch using:

```{r create_batch}
create_batch("batch_name")
```

Once you have created a batch, you need to get the template ID (it tells Captricity what data to pull from where). Captricity requires a template. These templates can be created using the [Web UI](https://shreddr.captricity.com/job/).

```{r set_tempid}
set_template_id("id")
```

Next, assign the template ID to a batch:
```{r temp_batch}
set_batch_template("batch_id", "template_id")
```



------------------
#### License
Scripts are released under [GNU V3](http://www.gnu.org/licenses/gpl-3.0.en.html).

