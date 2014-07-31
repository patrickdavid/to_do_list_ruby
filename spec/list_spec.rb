require 'rspec'
require 'list'
require 'task'

describe (List) do
  it("starts out with an empty list of tasks") do
  test_list = List.new("School stuff")
  expect(test_list.tasks).to(eq([]))
end

  it("can add tasks") do
    test_list = List.new("School stuff")
    test_task = Task.new("Learn Ruby")
    test_list.add_task(test_task)
    expect(test_list.tasks).to(eq([test_task]))
  end

  it("can make two lists") do
    test_list = List.new("School stuff")
    next_list = List.new("Home stuff")
    test_task = Task.new("Learn Ruby")
    home_task = Task.new("Do Launddry")
    next_list.add_task(home_task)
    test_list.add_task(test_task)
    expect(next_list.tasks).to(eq([home_task]))
    expect(test_list.tasks).to(eq([test_task]))
  end
end
