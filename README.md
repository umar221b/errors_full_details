# ErrorsFullDetails
Adds a new method to ActiveModel::Errors to display messages with codes using details.

## Usage
Add errors with codes to an object:

```ruby
class Person < ApplicationRecord
  validate :username_is_cool
  validate :title_is_looking_good
  validate :default_code

  private

  def username_is_cool
    errors.add(:username, 'is not cool', code: 15)
  end

  def title_is_looking_good
    errors.add(:title, 'is not looking good', code: '210')
  end

  def default_code
    errors.add(:base, 'This error has a default code')
  end
end
```

Call `object.errors.full_details` to generate an array of error messages and codes:

```ruby
[
  {
    message: "Username is not cool",
    code: "15"
  },
  {
    message: "Title is not looking good",
    code: "210"
  },
  {
    message: "This error has a default code",
    code: "0"
  }
]
```

Errors added without an error code will return `'0'` as a default error code.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'errors_full_details', '~> 0.0.4'
```

And then execute:
```bash
$ bundle
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
