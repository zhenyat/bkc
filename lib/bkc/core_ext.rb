String.class_eval do
  def to_squawk
    "squawk! #{self}".strip
  end
end

#BKC_LOG_FILE = "#{Rails.root}/log/debug.log"

def bkc_log *args
#    return if BKC_DEBUG.nil? || BKC_LOG_FILE.empty? || BKC_LOG_FILE.nil?

    if args.length == 0
#      File.open(BKC_LOG_FILE, 'a') { |file_log| file_log.puts "#{bkc_timestamp} #{params[:controller]}##{params[:action]} - no arguments"}
    else
#      file_log = File.open(BKC_LOG_FILE, 'a')           # Opens log-file
#      file_log.puts "#{bkc_timestamp} #{params[:controller]}##{params[:action]}:"    # Writes controller#action

      # Writes all arguments to ...
      args.each_with_index do |arg, index|
#        file_log.puts "arg[#{index}]: #{arg.inspect}"  # ... bkc.log
        puts "BKC-LOG! arg[#{index}]: #{arg.inspect}"  # ... console
#       logger.debug "arg[#{index}]: #{arg.inspect}"   # ... console & development.log
      end
#      file_log.close                                   #Closes log-file
    end
  end

def bkc_timestamp
  "\n#{Time.now.strftime('[%Y-%m-%d %H:%M:%S]')}"
end