# Ecto UK Postcode

Ecto extension to support UK Postcodes in models

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `ecto_uk_postcode` to your list of dependencies in `mix.exs`:

    ```
    def deps do
      [{:ecto_uk_potscode, "~> 0.1.0"}]
    end
    ```

## Usage

On your schema, define UK Postcode fields with this type:

```
field :postcode, Ecto.UKPostcode
```
