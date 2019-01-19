class User < ApplicationRecord
    validates :email, length: {in: 2..190, too_long: "Quá dài 2!" }, presence: true, uniqueness: {case_sensitive: false}
    # validates :password, acceptance: true

    validate :name_valid

    def name_valid
        if name == ""
            errors.add(:name,"Cần nhập đầy đủ!")
        end
    end

end
