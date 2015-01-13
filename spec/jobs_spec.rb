require('rspec')
require('jobs')

describe(Job) do

  describe('#summary') do
    it('returns the data from an individual job') do
      test_job = Job.new("Cashier", 2011..2012, "Handled Money")
      expect(test_job.summary()).to(eq(["Cashier", 2011..2012, "Handled Money"]))
    end
  end

  describe('.all') do
    it('starts with an empty array') do
      expect(Job.all()).to(eq([]))
    end

    it('returns a wacky array of all the job data') do
      test_job1 = Job.new("Cashier", 2011..2012, "Handled Money")
      test_job2 = Job.new("Manager", 2012..2013, "Bossed people around")
      test_job1.save()
      test_job2.save()
      expect(Job.all()).to(eq([test_job1, test_job2]))
    end
  end

  describe('.clear') do
    it('erases all data') do
      expect(Job.clear()).to(eq([]))
    end
  end

  describe('.delete') do
    it('erases the data for an individual job based on its index') do
      test_job0 = Job.new("Busboy", 2010..2011, "Washed Dishes")
      test_job1 = Job.new("Cashier", 2011..2012, "Handled Money")
      test_job2 = Job.new("Manager", 2012..2013, "Bossed people around")
      test_job0.save()
      test_job1.save()
      test_job2.save()
      Job.delete(1)
      expect(Job.all()).to(eq([test_job0, test_job2]))
    end
  end

  before() do
    Job.clear()
  end


end
