class AddAttachmentAnnouncementImageToAnnouncements < ActiveRecord::Migration
  def self.up
    change_table :announcements do |t|
      t.attachment :announcement_image
    end
  end

  def self.down
    remove_attachment :announcements, :announcement_image
  end
end
