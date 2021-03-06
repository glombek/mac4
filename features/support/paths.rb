# Taken from the cucumber-rails project.

module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /the home\s?page/
      '/'

    when /the treatments page/
      '/treatments'

    when /the IPL treatment page/
      '/treatments/ipl-permanent-hair-reduction'

    when /the Dermaroller treatment page/
      '/treatments/dermaroller'

    when /the Botox treatment page/
      '/treatments/wrinkle-relaxing-injections'

    when /the Dermal fillers treatment page/
      '/treatments/dermal-fillers'

    when /the Sclerotherapy treatment page/
      '/treatments/sclerotherapy'

    when /the Microdermabrasion treatment page/
      '/treatments/microdermabrasion'

    when /the Diathermy treatment page/
      '/treatments/diathermy'

    when /the Semi-permanent cosmetics page/
      '/treatments/semi-permanent-cosmetics'

    when /the products page/
      '/products'

    when /the Jan Marini products page/
      '/products/jan-marini'

    when /the Sesha products page/
      '/products/sesha'

    when /the Jane Iredale products page/
      '/products/jane-iredale'

    when /the iS CLINICAL products page/
      '/products/is-clinical'

    when /the About us page/
      '/about'

    when /the Links page/
      '/links'

    when /the Contact page/
      '/contact'

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)
