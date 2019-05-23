local pipeline = import 'pipeline.libsonnet';
local name = 'webhippie/kanboard';

[
  pipeline.build(name, 'latest', 'latest', 'amd64'),
  pipeline.build(name, 'latest', 'latest', 'arm32v6'),
  pipeline.build(name, 'latest', 'latest', 'arm64v8'),
  pipeline.manifest('latest', 'latest', ['amd64', 'arm32v6', 'arm64v8']),
  pipeline.build(name, 'v1.2', '1.2', 'amd64'),
  pipeline.build(name, 'v1.2', '1.2', 'arm32v6'),
  pipeline.build(name, 'v1.2', '1.2', 'arm64v8'),
  pipeline.manifest('v1.2', '1.2', ['amd64', 'arm32v6', 'arm64v8']),
  pipeline.build(name, 'v1.1', '1.1', 'amd64'),
  pipeline.build(name, 'v1.1', '1.1', 'arm32v6'),
  pipeline.build(name, 'v1.1', '1.1', 'arm64v8'),
  pipeline.manifest('v1.1', '1.1', ['amd64', 'arm32v6', 'arm64v8']),
  pipeline.build(name, 'v1.0', '1.0', 'amd64'),
  pipeline.build(name, 'v1.0', '1.0', 'arm32v6'),
  pipeline.build(name, 'v1.0', '1.0', 'arm64v8'),
  pipeline.manifest('v1.0', '1.0', ['amd64', 'arm32v6', 'arm64v8']),
  pipeline.microbadger(['latest', '1.2', '1.1', '1.0']),
]
