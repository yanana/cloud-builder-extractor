# cloud-builder-extractor

[![Docker Repository on Quay](https://quay.io/repository/yanana/cloud-builder-extractor/status "Docker Repository on Quay")](https://quay.io/repository/yanana/cloud-builder-extractor)

This is a tool builder to extract something simply using `cp` command, for use in [Google Cloud Container Builder](https://cloud.google.com/container-builder/docs/)'.

## Examples

The following example demonstrate a build request that uses this builder.

### Extract deeply hidden file into the root of the workspace

This `cloudbuild.yaml` invokes `cp x/y/z/foo .` in the build's workspace.

```yaml
steps:
- name: quay.io/yanana/cloud-builder-extractor
  args: ['x/y/z/foo', '.']
  id: extraction
```
