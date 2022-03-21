Changelog nginx with symfony >= 4.x
* v2.1 (2022-03-21)
	* Remove APP_ENV variable support
	* Change fastcgi_* parms to default values

* v2.0 (2022-02-14)
	* [FEATURE] Move to unix socket

* v1.4 (2021-10.13)
	* [FEATURE] Added Integration with Github Actions [#9](https://github.com/opositatest/nginx/pull/9)
	* Moved the directive "include" in to the custom setting to the end of file in nginx.conf to able overwrite any configure

* v1.3 (2021-09.17)
	* [FEATURE] Increase max file size to 30MB [#8](https://github.com/opositatest/nginx/pull/8)
	
* v1.2 (2021-05-31)
	* [FEATURE] Raise keepalive to 75s and set worker_process to auto[#7](https://github.com/opositatest/nginx/pull/7)
    
* v1.0
	* Remove https redirect