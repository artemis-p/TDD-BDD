# describe 'The sleep() method' do
#   it('can sleep for 0.1 second') { sleep 0.1 }
#   it('can sleep for 0.2 second') { sleep 0.2 }
#   it('can sleep for 0.3 second') { sleep 0.3 }
#   it('can sleep for 0.4 second') { sleep 0.4 }
#   it('can sleep for 0.5 second') { sleep 0.5 }
# end
# by using rspec --profile, shows all the run times
# Top 5 slowest examples (1.52 seconds, 99.7% of total time):
#   The sleep() method can sleep for 0.5 second
#     0.50584 seconds ./spec/slow_spec.rb:6
#   The sleep() method can sleep for 0.4 second
#     0.4035 seconds ./spec/slow_spec.rb:5
#   The sleep() method can sleep for 0.3 second
#     0.30277 seconds ./spec/slow_spec.rb:4
#   The sleep() method can sleep for 0.2 second
#     0.20537 seconds ./spec/slow_spec.rb:3
#   The sleep() method can sleep for 0.1 second
#     0.1006 seconds ./spec/slow_spec.rb:2

# or you can choose how many you want to see: rspec --profile 2