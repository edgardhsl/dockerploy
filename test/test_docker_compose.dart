import 'dart:developer';

import 'package:dockerploy/data/model/docker_compose.dart';

main() {
// Criação das propriedades para o serviço frontend
  ServiceProps frontendProps = ServiceProps();
  frontendProps.image = 'frontend-image';
  frontendProps.ports = [
    {'80': '80', '8080': '8080'}
  ];

  // Criação das propriedades para o serviço backend
  ServiceProps backendProps = ServiceProps();
  backendProps.build = Build(
    context: './backend',
    args: [
      {'name': 'arg1', 'value': 'value1'},
      {'name': 'arg2', 'value': 'value2'},
    ],
  );
  backendProps.volumes = [
    {'container': './backend/src', 'host': '/app/src'}
  ];
  backendProps.environments = [
    {'name': 'ENV_VAR', 'value': 'valor'}
  ];

  // Criação do objeto Service com as propriedades preenchidas
  Service service = Service(frontend: frontendProps, backend: backendProps);

  // Criação do objeto DockerCompose com a lista de serviços
  DockerCompose dockerCompose = DockerCompose(services: [service]);

  // Conversão do objeto DockerCompose para JSON
  Map<String, dynamic> instance = dockerCompose.toJson();

  log(instance.toString());
}
