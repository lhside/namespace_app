module Content
  class Post < ::Post
    # Use friendly id
    def to_param
      name
    end

    # Find by friendly id
    def self.find_by_param(param)
      find_by(name: param)
    end

    logger.info "[INFO] Content::Post loaded! #{'=' * 50}"
  end
end
