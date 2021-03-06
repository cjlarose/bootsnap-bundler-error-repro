#!/usr/bin/env ruby

require "bundler/setup" # ← this loads from site_ruby/
env = ENV["RAILS_ENV"] || "development"
require "bootsnap"
Bootsnap.setup(
  cache_dir:            ".",
  development_mode:     env == "development",
  load_path_cache:      true,
  autoload_paths_cache: false,
  disable_trace:        false,
  compile_cache_iseq:   true,
  compile_cache_yaml:   true
)
require "bundler" # ← this erroneously loads again, from gems/
