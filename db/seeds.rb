# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# RESET ID NUMBERING===============
module ActiveRecord
  class Base
    def self.reset_pk_sequence
      case ActiveRecord::Base.connection.adapter_name
        when 'SQLite'
          new_max = maximum(primary_key) || 0
          update_seq_sql = "update sqlite_sequence set seq = #{new_max} where name = '#{table_name}';"
          ActiveRecord::Base.connection.execute(update_seq_sql)
        when 'PostgreSQL'
          ActiveRecord::Base.connection.reset_pk_sequence!(table_name)
        else
          raise "Task not implemented for this DB adapter"
      end
    end
  end
end
#============

City.destroy_all
Category.destroy_all
Listing.destroy_all


cities = City.create([
	{ name: 'Chicago, IL USA' },
	{ name: 'Copenhagen, Denmark' },
	{ name: 'New York City, NY USA' },
	{ name: 'Melbourne, Australia' },
	{ name: 'San Francisco, CA USA' },
	{ name: 'Tokyo, Japan' },
	{ name: 'Paris, France' },
	{ name: 'Barcelona, Spain' },
	{ name: 'Rome, Italy' },
	{ name: 'Las Vegas, Nevada USA' } #Get from Travel Channel App
	])

categories = Category.create([
	{ name: 'Drinking'},
	{ name: 'Gambling'},
	{ name: 'Nightlife'},
	{ name: 'Coffee and Tea'} #Get from Yelp!
	])	}

listings = Listing.create([
	{},
	{}
	])	}
