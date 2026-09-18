# LLM API Gateway

A gateway creates a controlled boundary around inference.

```text
Client -> HTTPS -> Authentication -> Rate Limit -> Validation -> LLM Runtime
```

Possible responsibilities include authentication, authorization, request validation, rate limiting, size limits, routing, logging, timeout control, and upstream health checks.

When appropriate, keep the inference runtime private and expose only the gateway.