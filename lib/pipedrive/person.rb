module Pipedrive
  class Person < Base

    class << self

      def find_or_create_by_name(name, opts={})
        find_by_name(name, :org_id => opts[:org_id]).first || create(opts.merge(:name => name))
      end
      
    end

    def deals(options={})
      res = Deal.all(get "#{resource_path}/#{id}/deals", :query => {:everyone => 1}.merge(options))
    end

    def activities(options={})
      Activity.all(get "#{resource_path}/#{person_id}/activities", :query => {}.merge(options))
    end

    def followers(options={})
      Follower.all(get "#{resource_path}/#{person_id}/followers", :query => {}.merge(options))
    end


    def add_follower(user_id)
      opts = {user_id: user_id}
      res = post "#{resource_path}/#{id}/followers", :body => opts
      res.success? ? res['data']['id'] : bad_response(res,opts)
    end

    def del_follower(follower_id)
      opts = {follower_id: follower_id}
      res = delete "#{resource_path}/#{id}/followers/#{follower_id}", :body => opts
      res.success? ? res['data']['id'] : bad_response(res,opts)
    end

    def merge(person_id)
      opts = {merge_with_id: person_id}
      res = post "#{resource_path}/#{id}/merge", :body => opts
      res.success? ? res['data']['id'] : bad_response(res,opts)
    end

    def add_product(opts = {})
      res = post "#{resource_path}/#{id}/products", :body => opts
      res.success? ? res['data']['product_attachment_id'] : bad_response(res,opts)
    end

  end
end