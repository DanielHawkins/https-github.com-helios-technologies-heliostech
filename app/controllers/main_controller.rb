class MainController < ApplicationController
  include ::Pipedrive

  def home
  end

  def contact_submit
    @submit = true
    @name = params["name"]
    org = Organization.find_or_create_by_name(params["company"])
    person = Person.find_or_create_by_name(
      @name,
      phone: params["phone"],
      email: params["email"],
      org_id: org.id,
    )
    deal = Deal.create(title: "Contact heliostech.fr #{ @name } at #{ params["company"] }", org_id: org.id, person_id: person.id)
    Note.create(content: params["message"], deal_id: deal.id, person_id: person.id, org_id: org.id)
    render :contact
  end
end
