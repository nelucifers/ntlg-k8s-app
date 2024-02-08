local base = import './base.libsonnet';
local imageTag = std.strReplace(importstr './value_tag', '\n', '');

base {
  components +: {
    website: {
      replicas: 1,
      name: 'web-app',
      image: 'nelucifers/ntlg-dplm:' + imageTag,
      containerPort: 80,
      servicePort: 80,
      loadBalancerPort: 8080,
      ingressClass: 'nginx',
      domain: 'ntlg-dplm-site.ru',
    },
  }
}
