@{

    AllowedDependencies = @{

        "QuantKimun.Applications.CLI" = @(
            "QuantKimun.Modules.Strategy.Application"
        )

        "QuantKimun.Modules.Strategy.Application" = @(
            "QuantKimun.Modules.Strategy.Domain"
            "QuantKimun.Events"
            "QuantKimun.Configuration"
            "QuantKimun.Common"
        )

        "QuantKimun.Modules.Strategy.Domain" = @(
            "QuantKimun.SharedKernel"
        )

        "QuantKimun.Modules.Strategy.Infrastructure" = @(
            "QuantKimun.Modules.Strategy.Application"
            "QuantKimun.Modules.Strategy.Domain"
        )

        "QuantKimun.SharedKernel" = @()

        "QuantKimun.Common" = @()

        "QuantKimun.Events" = @()

        "QuantKimun.Configuration" = @()

        "QuantKimun.Adapters.Abstractions" = @()
    }
}