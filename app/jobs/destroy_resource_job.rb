class DestroyResourceJob < ActiveJob::Base
  queue_as :trash_can

  def perform(resource)
    resource.destroy
  end
end
