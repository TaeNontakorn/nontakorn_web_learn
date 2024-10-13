class Task < ApplicationRecord
    validates :title, presence: true
    
    # Set default status to 'incomplete'
    after_initialize :set_default_status, if: :new_record?
  
    def set_default_status
      self.status ||= 'incomplete'
    end
  
    # Mark the task as complete
    def mark_complete
      update(status: 'complete')
    end
  end
  