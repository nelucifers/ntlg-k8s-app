local base = import './base.libsonnet';

base {
  components +: {
    website: {
      replicas: 1,
      name: 'web-app',
      image: 'nelucifers/ntlg-dplm:19',
      containerPort: 80,
      servicePort: 80,
      loadBalancerPort: 8080,
      ingressClass: 'nginx',
      domain: 'ntlg-dplm-site.ru',
    },
  }
}
