class Pokemon
  attr_reader :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name:, type:, db:)
    db.execute("INSERT INTO pokemon (id, name, type) VALUES (?,?,?)", name, type)
  end

  def self.find(id:, db:)
  end 
end
