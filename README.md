# apache2-global-customlog-cookbook

Very simple cookbook that sets up global CustomLog and Logformat directives 
for apache2. 

This will set a customlog that applies to all vhosts that don't define their 
own CustomLog, as well as some LogFormat directives that can be reused by
CustomLog directives in vhost configurations.

Replaces apache's other-vhosts-access-log configuration file.

## Supported Platforms

ubuntu, debian, possibly other unices (untested)

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['apache2-global-customlog']['location']</tt></td>
    <td>String</td>
    <td>Default location to log to (file or pipe)</td>
    <td><tt>/var/log/apache2/other-vhosts-access.log</tt></td>
  </tr>
  <tr>
    <td><tt>['apache2-global-customlog']['format']</tt></td>
    <td>String</td>
    <td>Log format for the customlog (format string or alias)</td>
    <td><tt>common</tt></td>
  </tr>
  <tr>
    <td><tt>['apache2-global-customlog']['log-formats']</tt></td>
    <td>Hash</td>
    <td>Log formats to define ("alias": "format") - *Note:* Quotes must be escaped in format.</td>
    <td><tt>{}</tt></td>
  </tr>
</table>

## Usage

### apache2-global-customlog::default

Include `apache2-global-customlog` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[apache2-global-customlog::default]"
  ]
}
```

Depends on the apache2 cookbook.

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Simon Detheridge (simon@widgit.com)
