def calculate_experience jobs
  months, years = 0, 0
  jobs.each do |job|
    date_stop = job['date_stop'] == 'Present' ? Date.today : Date.parse(job['date_stop'])
    months += date_stop.month - Date.parse(job['date_start']).month
    years += date_stop.year - Date.parse(job['date_start']).year
  end
  years += months / 12
  months = months % 12
  yield years, months
end
