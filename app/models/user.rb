class User < ApplicationRecord
<<<<<<< HEAD
=======
    has_many :comments
    has_many :climbs, through: :comments
>>>>>>> 447c3456f8953064de40ed02caee56562c7404e6
end
