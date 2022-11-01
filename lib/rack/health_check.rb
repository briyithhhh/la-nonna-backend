module Rack
  class  HealthCheck

    def status(postgres, migrations)
      if postgres && migrations
        return 'OK'
      else
        return 'Error || Check DB'
      end
    end

    # make a load change to the database
    def api_status
      if(ApplicationRecord.connection.migration_context.needs_migration? == true)
        return 'Migrations pendings'
      end
      if(ActiveRecord::Base.connection.active? != true)
        return 'DB connection error'
      end
      return 'OK'
    end


    def call(env)
      status = {
        api: status(postgres_connected, postgres_migrations_updated),
        api_status: api_status,
        redis: {
          connected: redis_connected
        },
        postgres: {
          connected: postgres_connected,
          migrations: {
            is_migrated: postgres_migrations_updated,
            errors: !postgres_migrations_updated
          }
        }
      }

      return [200, {}, [status.to_json]]
    end

    protected

    def redis_connected
      $redis.ping == 'PONG' rescue false
    end

    def postgres_connected
      begin
        ApplicationRecord.establish_connection
        ApplicationRecord.connection
        ApplicationRecord.connected?
      rescue
        false
      end
    end

    def postgres_migrations_updated
      return false unless postgres_connected

      !ApplicationRecord.connection.migration_context.needs_migration?
    end
  end
end