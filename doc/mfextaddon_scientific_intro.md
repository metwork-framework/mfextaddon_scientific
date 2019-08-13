# What is MFEXT Scientific Addon?

This module provides additional sets of tools and libraries of the :doc:`MetWork MFEXT <mfext:index>` module, for scientific development.

It doesn't contain any services, it is just a bunch of files and directories.

Like :doc:`MFEXT <mfext:index>`, it is staged in logical and/or technical *layers*. You may check :doc:`mfext:layerapi2` documentation for more about *layers* concept and technical details.

The available libraries and sets of tools in MFEXT can be found by checking 
the documentation about layers or the :ref:`genindex`, or by using the search box.
<div role="search">
  <form id="rtd-search-form" class="wy-form" action="search.html" method="get">
    <input type="text" name="q" placeholder="Search docs" />
    <input type="hidden" name="check_keywords" value="yes" />
    <input type="hidden" name="area" value="default" />
    <button type="submit"><i class="fa fa-search"></i></button>
  </form>
</div>

_ _ _

# Usage

## General

After installation, there is no service to initialize or to start.

All the files are located in `/opt/metwork-mfext-{BRANCH}` directory with probably
a `/opt/metwork-mfext => /opt/metwork-mfext-{BRANCH}` symbolic link (depending
on what you have installed).

Because `/opt` is not used by default on [standard Linux](https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard), the installation shouldn't break anything.

Therefore, if you do nothing specific after the installation, you won't benefit from any included software packages !

So, to use this module, you have to load a kind of "metwork environment". There are several ways to do that.

In the following, we use `{MFEXT_HOME}` as the installation directory of the `mfext` module. It's probably something like `/opt/metwork-mfext-{BRANCH}` or `/opt/metwork-mfext`. Have a look in `/opt` directory.

### Usage (for one command only)

If you want to load the "mfext environment" for one command only and return back to a standard running environment after that, you can use the specific wrapper.

Let's assume we want to use the `ncatted` utility of the :ref:`nco toolkit provided in the scientific layer <layer_scientific:packages>`.

```bash
##### Shell session example #####

# where is the system ncatted command ?
$ which ncatted
/usr/bin/which: no ncatted in (/usr/local/bin:/usr/bin:/usr/local/sbin)
# =>  the ncatted is not in the the standard/system path

# execute ncatted through the mfext wrapper
# (please replace {MFEXT_HOME} by the real mfext home !)
$ {MFEXT_HOME}/bin/mfext_wrapper which ncatted
/opt/metwork-mfext-[...]/opt/scientific/bin/ncatted
# => this is the MetWork ncatted command included in the MetWork scientific layer

# what is the version of the ncatted command ?
$ {MFEXT_HOME}/bin/mfext_wrapper ncatted --version
NCO netCDF Operators version 4.7.6 built by nobody on 2bdf6070026e at Jun  6 2019 21:01:07
ncatted version 4.7.6

```

## Usage (for the whole shell session)

If you are tired to use `mfext_wrapper` repeatedly, you can load the "mfext environment" for the whole shell session.

```bash
##### Shell session example #####

# where is the system ncatted command ?
$ which ncatted
/usr/bin/which: no ncatted in (/usr/local/bin:/usr/bin:/usr/local/sbin)
# =>  the ncatted is not in the the standard/system path

# load the mfext environment for the whole shell session
$ source {MFEXT_HOME}/share/interative_profile
           __  __      ___          __        _
          |  \/  |    | \ \        / /       | |
          | \  / | ___| |\ \  /\  / /__  _ __| | __
          | |\/| |/ _ \ __\ \/  \/ / _ \| '__| |/ /
          | |  | |  __/ |_ \  /\  / (_) | |  |   <
          |_|  |_|\___|\__| \/  \/ \___/|_|  |_|\_\


 17:01:04 up 19 days,  5:22,  1 user,  load average: 0.75, 0.71, 0.45

# => the interactive environment is loaded
# execute ncatted through the mfext wrapper
# (please replace {MFEXT_HOME} by the real mfext home !)
$ {MFEXT_HOME}/bin/mfext_wrapper which ncatted
/opt/metwork-mfext-[...]/opt/scientific/bin/ncatted
# => this is the MetWork ncatted command included in the MetWork scientific layer

# what is the version of the ncatted command ?
$ {MFEXT_HOME}/bin/mfext_wrapper ncatted --version
NCO netCDF Operators version 4.7.6 built by nobody on 2bdf6070026e at Jun  6 2019 21:01:07
ncatted version 4.7.6
```

.. note:: 
   | If you want to do that but in a non-interactive shell, you should use `source {MFEXT_HOME}/share/profile` instead.

## Usage (automatically for one user)

If you want to have a system user with "always loaded" metwork environment, you can add:

```bash
source {MFEXT_HOME}/share/interactive_profile
```

in (for example) in the user `.bash_profile` file.

.. note: 
    We do not recommend to use this for a user with a full graphical interface because of possible side effects with desktop environment.

An alternative way is to add

```bash
alias mfext="source {MFEXT_HOME}/share/interactive_profile"
```

in `.bash_profile` file and use this `mfext` alias when you want to quickly load the "mfext environment".


# How to configure the metwork yum repository ?

In order to configure the Metwork yum repository, refer to :doc:`MFEXT documentation <mfext:configure_metwork_repo>`

# How install/upgrade/remove mfextaddon_scientific (with internet access) ?
To install, run one or more of the following commands, depending on the `layer` you need:

```bash
# To install some scientific libraries
yum install metwork-mfext-layer-scientific
yum install metwork-mfext-layer-python3_scientific
yum install metwork-mfext-layer-python2_scientific
```

To upgrade, use `yum upgrade` command and to remove, use `yum remove` command.

.. seealso::
    :doc:`mfext:install_a_metwork_package`

    
<!--
Intentional comment to prevent m2r from generating bad rst statements when the file ends with a block .. xxx ::
-->    