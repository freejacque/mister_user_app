class User < Sequel::Model
  plugin :secure_password

  def validate
    super
  end


  def age
    birth_date = Time.at(dob)
    return (birth_date.year - Time.now.year).abs
  end

  def male?
    gender == "male"
  end

  def female?
    gender == "female"
  end

  def mr?
    if name.match(/^mr.\s/)
      true
    else
      false
    end
  end

  def ms?
    if /^ms./.match(name)
      true
    else
      false
    end
  end

  def miss?
    if /^mrs.\s/.match(name)
      true
    else
      false
    end
  end

  def mrs?
    if /^mrs./.match(name)
      true
    else
      false
    end
  end

  def adult?
    age >= 18
  end

  def boomer?
    Time.at(dob).year == (1946..1964)
  end

  def teen?
    age == (13..18)
  end

  def tween?
    age == (11..12)
  end

  def child?
    age == (4..10)
  end

  def toddler?
    age == (1..3)
  end

  def baby?
    age == (0..1)
  end

end
