require('spec_helper')

describe(Task) do
  describe(".all") do
    it("is empty at first") do
      expect(Task.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a task to the array of saved tasks") do
      test_task = Task.new({:description => "learn SQL", :list_id => 1, :due_date => "2016-01-08 00:00:00"})
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
    end
  end

  describe("#description") do
    it("lets you give it a description") do
      test_task = Task.new({:description => "wash the lion", :list_id => 1, :due_date => "2016-01-08 00:00:00"})
    end
  end

  describe("#==") do
    it("is the same task if it has the same description") do
      task1 = Task.new({:description => "learn SQL", :list_id => 1, :due_date => "2016-01-08 00:00:00"})
      task2 = Task.new({:description => "learn SQL", :list_id => 1, :due_date => "2016-01-08 00:00:00"})
      expect(task1).to(eq(task2))
    end
  end
end
