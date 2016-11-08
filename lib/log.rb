module FarCry
  class Log
    attr_reader :path

    def initialize(path=nil)
      @path = path || 'far_cry.log'
    end

    def write(message)
      data << message
      data << "\n"
    end

    def to_file
      File.open("#{Dir.pwd}/#{path}", 'w') {|f| f.write(data) }
    end

    private

    def data
      @data ||= "#{Time.now} new bulk send:\n"
    end
  end
end
