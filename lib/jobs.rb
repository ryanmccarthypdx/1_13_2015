class Job
  @@all_jobs = []

  define_method(:initialize) do |title, date_range, main_resp|
    @title = title
    @date_range = date_range
    @main_resp = main_resp
    @job_data = [@title, @date_range, @main_resp]
  end

  define_method(:summary) do
    @job_data
  end

  define_singleton_method(:all) do
    @@all_jobs
  end

  define_method(:save) do
    @@all_jobs.push(self)
  end

  define_singleton_method(:clear) do
    @@all_jobs = []
  end

  define_singleton_method(:delete) do |job_index|
    @@all_jobs.delete_at(job_index)
  end

end
