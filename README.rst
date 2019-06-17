Validate Page

Gem to validate link to pages based on content

To get started:

.. code:: bash

    #Gemfile
    gem 'validate_page'

    #initializers/validate_page.rb
    ValidatePage.set_parser(:text_parser)

    #config/initializers/validate_page.rb
    ValidatePage.set_validator(:capybara_validator) for pages from SPAs
    OR
    ValidatePage.set_validator(:text_validator) for fast and simple validation based on string match

    #example model
    validates_with ValidatePage.on(:name, 'offensive, violence, illegel, keyword_1, keyword_2, ...', 'The page you are trying to link has inappropreate content')

