Capistrano::Configuration.instance(:must_exist).load do
  namespace :deploy do
    namespace :assets do
      tasks :precompile, :roles => :app, :except => { :no_release => true } do
        logger.info "overwritten"
      end
    end
  end
end