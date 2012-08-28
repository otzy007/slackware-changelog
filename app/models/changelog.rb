# Model to check for new updates and store them
class Changelog < ActiveRecord::Base
  # Check if there are any new updates available
  def self.update?(version)
    begin
      # Get the changelog file
      changelogf = open "ftp://ftp.osuosl.org/pub/slackware/slackware#{version == 32 ? '' : '64'}-current/ChangeLog.txt"      
      oldChange = Changelog.first
      changelog = changelogf.read[0 .. 113]
     
      # Verify if there are new changes
      puts "current#{version == 32 ? '' : '64'}"
      puts changelog
      
      if oldChange.send("current#{version == 32 ? '' : '64'}".to_sym) == changelog
	puts "no change"
	return false
      end
      # Update the database
      oldChange.send(:update_attributes, {"current#{version == 32 ? '' : '64'}".to_sym => changelog}, :without_protection => true)
      return true
    rescue SocketError
      # In case of SockError catch the exception
      puts "SocketError"
      return false
    end
  end
end
