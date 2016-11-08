module FarCry
  class BulkSend
    def logger
      @logger ||= Log.new
    end

    def json_data
      @json_data ||= JSON.parse(SoFarSoGood.far.to_json)
    end

    def bulk_send
      json_data.each do |data_bite|
        send_bite(data_bite)
      end
      logger.to_file
    end

    def send_bite(bite)
      client.post('/regs', bite)
    rescue Exception => e
      logger.write("#{bite['number']} failed: #{e.message}")
    end

    def client
      @client ||= ApiClient.new
    end
  end
end
