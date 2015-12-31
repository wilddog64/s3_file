if defined?(ChefSpec)
  # this matcher allows to write a test case against notifications
  ChefSpec::Runner.define_runner_method(:s3_file)

  def create_s3_file(path)
    ChefSpec::Matchers::ResourceMatcher.new(:s3_file, :create, path)
  end
end
