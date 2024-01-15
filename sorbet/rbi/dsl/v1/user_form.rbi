# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `V1::UserForm`.
# Please instead update this file by running `bin/tapioca dsl V1::UserForm`.

class V1::UserForm
  sig { returns(T.nilable(::String)) }
  def locale; end

  sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
  def locale=(value); end

  sig { returns(T.nilable(::String)) }
  def time_zone; end

  sig { params(value: T.nilable(::String)).returns(T.nilable(::String)) }
  def time_zone=(value); end
end