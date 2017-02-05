
## <a name="resource-user">User</a>

Stability: `prototype`

User API

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **id** | *integer* | unique identifier of user | `1` |
| **mail** | *string* | unique user email | `"kata0hka@gmail.com"` |
| **name** | *string* | user name | `"kata0hka"` |
| **password** | *string* | user password | `"my_password"` |

### <a name="link-GET-user-/users/{(%23%2Fdefinitions%2Fuser%2Fdefinitions%2Fidentity)}">User Info</a>

Info for existing user.

```
GET /users/{user_id}
```


#### Curl Example

```bash
$ curl -n http://0.0.0.0:3000/users/$USER_ID
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "id": 1,
  "name": "kata0hka",
  "mail": "kata0hka@gmail.com",
  "password": "my_password"
}
```


