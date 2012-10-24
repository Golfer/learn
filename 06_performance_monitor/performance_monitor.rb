def measure(laps=1)
   start=Time.now
   laps.times do
     yield
   end
   finish=Time.now
   lap_times = (finish-start)/laps
end
