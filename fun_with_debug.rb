trace = TracePoint.new(:raise) do |t|
  require 'debug'
end

teste = "Teste"
trace.enable

require 'doesnt_exist'
