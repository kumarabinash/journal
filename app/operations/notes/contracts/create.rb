class Notes::Contracts::Create < Reform::Form
  property :title
  property :body
  # property :tags


  validation do
    params do
      required(:title).filled
    end
  end

  # validates :title,  length: 3..256
  # validates :body, length: 3..65536
end