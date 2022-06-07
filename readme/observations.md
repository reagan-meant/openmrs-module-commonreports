## Observations Report
This report searches through patient Observations.

**Setup**

It is setup by setting the following properties in [initializer](https://github.com/mekomsolutions/openmrs-module-initializer) `jsonkeyvalues`' domain configuration. 

```bash
{
    ...
    ...,
    "report.obs.active" : "true"
}
```
`report.obs.active` activates the report to be usable when the module is loaded.