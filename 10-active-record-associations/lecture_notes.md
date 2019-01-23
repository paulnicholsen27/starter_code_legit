NOTE:  BELOW RELATIONSHIP IS ONE TO MANY TO MANY (HOSPITAL HAS MANY DOCTORS, DOCTOR HAS MANY PATIENTS). 
ADD IN A MANY TO MANY RELATIONSHIP

```rb
class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialty
      t.integer :hospital_id
  end
end

class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :doctor_id
    end
  end
end

class CreateHospitals < ActiveRecord::Migration[5.2]
  def change
    create_table :hospitals do |t|
      t.string :name
      t.text :address
      t.string :phone
    end
  end
end
```

## Models

```rb
class Doctor < ActiveRecord::Base
  has_many :patients
  belongs_to :hospital
end

class Hospital < ActiveRecord::Base
  has_many :doctors
  has_many :patients, through: :doctors
end

class Patient < ActiveRecord::Base
  belongs_to :doctor
  delegate :hospital, :to => :doctor
end
```
