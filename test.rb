require 'pstore'
require 'bundler'
Bundler.require

store = PStore.new('test.pstore')

Benchmark.ips do |x|
  x.config warmup: 90 if RUBY_ENGINE == 'jruby'
  x.report("PStore save") do
    store.transaction do
      store[:a] = 1
    end
  end

  x.report("PStore fetch") do
    store.transaction do
      store[:a]
    end
  end
end
