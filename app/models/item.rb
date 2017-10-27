class Item < ActiveRecord::Base
    belongs_to :list
    validates :description, presence: true
    STATUS = {
        :complete => 1,
        :incomplete => 2
    }

    def complete?
        self.status == STATUS[:complete]
    end

    def incomplete?
        self.status == STATUS[:incomplete]
    end

end
