class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  has_attached_file :body,
                   :storage => :s3,
                   :s3_host_name => 's3-us-west-2.amazonaws.com',
                   :s3_region => ENV['AWS_REGION'],
                   :s3_credentials => Proc.new{|a| a.instance.s3_credentials }

 def s3_credentials
   {:bucket => ENV.fetch('S3_BUCKET_NAME'), :access_key_id => ENV.fetch('AWS_ACCESS_KEY_ID'), :secret_access_key => ENV.fetch('AWS_SECRET_ACCESS_KEY')}
 end
  validates_attachment_content_type :body, content_type: /\Aimage\/.*\z/
end
