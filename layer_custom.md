{% extends "layer.md" %}

{% block overview %}
This is the `root` layer of the MFEXT Scientific Addon.

This layer mainly includes core libraries and utilities like :

- :doc:`layerapi2 <layerapi2>` library and utilities which manage the layer system
- wrappers (`python2`, `python3`, `python`...)
- [glib (gnome) library](https://developer.gnome.org/glib/)
- (and some other documented below)

The `root` layer is loaded by default and does not depend on another layer. This
is the layer dependencies root.

.. seealso::
    :doc:`MFEXT layer root <mfext:layer_root>`

{% endblock %}
