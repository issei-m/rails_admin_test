RailsAdmin.config do |config|
  config.asset_source = :webpack

  config.actions do
    dashboard   # mandatory
    index       # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
  end
end
