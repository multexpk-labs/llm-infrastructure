# Model Serving

Model serving exposes an inference runtime to applications.

## Layers

Application -> API -> Runtime -> Model -> Hardware

Start locally, verify the runtime, then add the required network and security layers.

Document the runtime version, model identifier, format, quantization, context length, hardware, endpoint, authentication, expected concurrency, and health-check method.