To add modules in NGINX on Ubuntu, you typically use dynamic modules which can be installed as separate packages and loaded
at runtime without recompiling NGINX from source.

Here are the main steps:

1. Check installed and available modules:

```
nginx -V 2>&1 | grep _module
```

This lists compiled-in and dynamic modules.

2. Install desired dynamic modules via Ubuntu packages, for example:

```
sudo apt install libnginx-mod-http-image-filter
```

Replace the module name with the one you want.

3. Load the installed dynamic module in NGINX config by adding a `load_module` directive in `/etc/nginx/nginx.conf` near the
   top (outside any blocks):

```nginx
load_module modules/ngx_http_image_filter_module.so;
```

The `.so` module files typically live in `/usr/lib/nginx/modules/` or `/etc/nginx/modules/`.

4. Test and reload NGINX configuration:

```
sudo nginx -t
sudo systemctl reload nginx
```

If you need modules not available as packages, or custom modules, you would usually build NGINX from source with these
modules compiled in or added as dynamic modules during compilation.

Most common setups on Ubuntu avoid rebuilding by using available dynamic modules installed via `apt` and enabled with
`load_module` directives.

This modular approach allows flexible adding/removing of functionality like image filters, geoip, or security enhancements
without a full NGINX recompile.[1][2][3]

[1](https://www.fastly.com/documentation/guides/next-gen-waf/setup-and-configuration/module-agent-deployment/nginx-module/installing-the-nginx-dynamic-module/)
[2](https://docs.nginx.com/nginx/admin-guide/installing-nginx/installing-nginx-open-source/)
[3](https://documentation.ubuntu.com/server/how-to/web-services/use-nginx-modules/)
[4](https://serverspace.io/support/help/how-to-enable-or-disable-nginx-modules/)
[5](https://stackoverflow.com/questions/36554405/how-to-enable-dynamic-module-with-an-existing-nginx-installation)
[6](https://nginx.org/en/linux_packages.html)
[7](https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-20-04)
[8](https://ubuntu.com/tutorials/install-and-configure-nginx)
