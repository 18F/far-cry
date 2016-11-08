require 'json'
require 'dotenv'
require 'rest-client'
require 'jwt'
require 'so_far_so_good'

if ENV['LOCAL']
  Dotenv.load
end

require_relative './lib/api_client'
require_relative './lib/bulk_send'
require_relative './lib/log'

module FarCry
  def self.bulk_send
    BulkSend.new.bulk_send
  end
end

