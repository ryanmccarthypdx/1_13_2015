class Job
  @@all_jobs = []

  define_method(:initialize) do |job_name, job_title, main_resp|
    @job_name = job_name
    @job_title = job_title
    @main_resp = main_resp
    @job_data = [@job_name, @job_title, @main_resp]
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
    @@all_jobs.delete_at((job_index.-(1)))
  end

end
