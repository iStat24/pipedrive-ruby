module Pipedrive
  class User < Base
    def activities
      Activity.all(get "#{resource_path}/#{id}/activities")
    end
  end
end