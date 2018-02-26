# Bootsnap error repro

Repro of https://github.com/Shopify/bootsnap/issues/134

```
docker build -t bootsnap-repro .
docker run -it bootsnap-repro
```

```
/usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.16.1/lib/bundler/errors.rb:9:in `status_code': Trying to register Bundler::GemfileError for status code 4 but Bundler::GemfileError is already registered (ArgumentError)
	from /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.16.1/lib/bundler/errors.rb:20:in `<class:GemfileError>'
	from /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.16.1/lib/bundler/errors.rb:20:in `<module:Bundler>'
	from /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.16.1/lib/bundler/errors.rb:3:in `<main>'
	from /usr/local/bundle/gems/bootsnap-1.1.8/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:17:in `require'
	from /usr/local/bundle/gems/bootsnap-1.1.8/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:17:in `require'
	from /usr/local/lib/ruby/gems/2.3.0/gems/bundler-1.16.1/lib/bundler.rb:10:in `<main>'
	from /usr/local/bundle/gems/bootsnap-1.1.8/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:17:in `require'
	from /usr/local/bundle/gems/bootsnap-1.1.8/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:17:in `require'
	from /app/entrypoint.rb:15:in `<main>'
```
