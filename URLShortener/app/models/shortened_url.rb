class ShortenedUrl < ApplicationRecord

  validates :long_url, :user_id, presence: true, uniqueness: true

  belongs_to :submitter,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User


  def self.random_code
    until false
      random_code = SecureRandom.urlsafe_base64
      shortened_urls.short_url.exists?(random_code)
    end

    random_code
  end

  def self.create_from_input(long_url, user)
    ShortenedUrl.create!(long_url: long_url, user_id: user.id, short_url: self.random_code)
  end
end
