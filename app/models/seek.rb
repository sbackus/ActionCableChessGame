class Seek
  def self.create(uuid)
    puts"THIS IS A TEST!!!!!!!"
    if opponent = REDIS.spop("seeks")

      Game.start(uuid, opponent)
    else
      REDIS.sadd("seeks", uuid)
    end
  end

  def self.remove(uuid)
    REDIS.srem("seeks", uuid)
  end

  def self.clear_all
    REDIS.del("seeks")
  end
end