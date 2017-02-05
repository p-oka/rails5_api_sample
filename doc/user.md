[31mbundler: failed to load command: prmd (/usr/local/bundle/bin/prmd)[0m
JSON::ParserError: 822: unexpected token at 'Meta is empty, please fill it next time.
{
  "$schema": "http://interagent.github.io/interagent-hyper-schema",
  "type": [
    "object"
  ],
  "definitions": {
    "user": {
      "$schema": "http://json-schema.org/draft-04/hyper-schema",
      "title": "User",
      "description": "User API",
      "stability": "prototype",
      "strictProperties": true,
      "type": [
        "object"
      ],
      "definitions": {
        "id": {
          "description": "unique identifier of user",
          "example": 1,
          "readOnly": true,
          "type": [
            "integer"
          ]
        },
        "name": {
          "description": "user name",
          "example": "kata0hka",
          "type": [
            "string"
          ]
        },
        "mail": {
          "description": "unique user email",
          "example": "kata0hka@gmail.com",
          "type": [
            "string"
          ]
        },
        "password": {
          "description": "user password",
          "example": "my_password",
          "type": [
            "string"
          ]
        },
        "identity": {
          "$ref": "#/definitions/user/definitions/id"
        }
      },
      "links": [
        {
          "description": "Info for existing user.",
          "href": "/users/{(%23%2Fdefinitions%2Fuser%2Fdefinitions%2Fidentity)}",
          "method": "GET",
          "rel": "self",
          "title": "Info"
        }
      ],
      "properties": {
        "id": {
          "$ref": "#/definitions/user/definitions/id"
        },
        "name": {
          "$ref": "#/definitions/user/definitions/name"
        },
        "mail": {
          "$ref": "#/definitions/user/definitions/mail"
        },
        "password": {
          "$ref": "#/definitions/user/definitions/password"
        }
      }
    }
  },
  "properties": {
    "user": {
      "$ref": "#/definitions/user"
    }
  }
}
'
  /usr/local/lib/ruby/2.3.0/json/common.rb:156:in `parse'
  /usr/local/lib/ruby/2.3.0/json/common.rb:156:in `parse'
  /usr/local/lib/ruby/2.3.0/json/common.rb:335:in `load'
  /usr/local/bundle/gems/prmd-0.13.0/lib/prmd/multi_loader/json.rb:12:in `load_data'
  /usr/local/bundle/gems/prmd-0.13.0/lib/prmd/multi_loader/loader.rb:102:in `load_stream'
  /usr/local/bundle/gems/prmd-0.13.0/lib/prmd/multi_loader/loader.rb:112:in `block in load_file'
  /usr/local/bundle/gems/prmd-0.13.0/lib/prmd/multi_loader/loader.rb:112:in `open'
  /usr/local/bundle/gems/prmd-0.13.0/lib/prmd/multi_loader/loader.rb:112:in `load_file'
  /usr/local/bundle/gems/prmd-0.13.0/lib/prmd/multi_loader/loader.rb:79:in `load_file'
  /usr/local/bundle/gems/prmd-0.13.0/lib/prmd/load_schema_file.rb:12:in `load_schema_file'
  /usr/local/bundle/gems/prmd-0.13.0/lib/prmd/cli/base.rb:99:in `try_read'
  /usr/local/bundle/gems/prmd-0.13.0/lib/prmd/cli/doc.rb:62:in `execute'
  /usr/local/bundle/gems/prmd-0.13.0/lib/prmd/cli/base.rb:141:in `run'
  /usr/local/bundle/gems/prmd-0.13.0/lib/prmd/cli.rb:95:in `run'
  /usr/local/bundle/gems/prmd-0.13.0/bin/prmd:6:in `<top (required)>'
  /usr/local/bundle/bin/prmd:17:in `load'
  /usr/local/bundle/bin/prmd:17:in `<top (required)>'
