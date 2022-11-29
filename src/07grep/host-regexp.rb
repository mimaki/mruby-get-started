MRuby::Build.new do |conf|
  conf.toolchain

  # include the default GEMs
  conf.gembox 'default'
  # Use mrbgems
  conf.gem :git => 'https://github.com/iij/mruby-regexp-prce.git'

  # C compiler settings
  conf.cc.defines = %w(MRB_UTF8_STRING)
end
