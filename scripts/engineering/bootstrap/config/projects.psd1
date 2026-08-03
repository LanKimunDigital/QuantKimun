@{

    Projects = @(
        @{
            Name = "QuantKimun.SharedKernel"
            Path = "src/Shared/QuantKimun.SharedKernel"
            Type = "classlib"
            Enabled = $true
        }

        @{
            Name = "QuantKimun.Common"
            Path = "src/Shared/QuantKimun.Common"
            Type = "classlib"
            Enabled = $true
        }

        @{
            Name = "QuantKimun.Events"
            Path = "src/Shared/QuantKimun.Events"
            Type = "classlib"
            Enabled = $true
        }

        @{
            Name = "QuantKimun.Configuration"
            Path = "src/Shared/QuantKimun.Configuration"
            Type = "classlib"
            Enabled = $true
        }

        @{
            Name = "QuantKimun.Modules.Strategy.Domain"
            Path = "src/Modules/Strategy/Domain/QuantKimun.Modules.Strategy.Domain"
            Type = "classlib"
            Enabled = $true
        }

        @{
            Name = "QuantKimun.Modules.Strategy.Application"
            Path = "src/Modules/Strategy/Application/QuantKimun.Modules.Strategy.Application"
            Type = "classlib"
            Enabled = $true
        }

        @{
            Name = "QuantKimun.Modules.Strategy.Infrastructure"
            Path = "src/Modules/Strategy/Infrastructure/QuantKimun.Modules.Strategy.Infrastructure"
            Type = "classlib"
            Enabled = $true
        }

        @{
            Name = "QuantKimun.Adapters.Abstractions"
            Path = "src/Adapters/QuantKimun.Adapters.Abstractions"
            Type = "classlib"
            Enabled = $true
        }

        @{
            Name = "QuantKimun.Applications.CLI"
            Path = "src/Applications/QuantKimun.Applications.CLI"
            Type = "console"
            Enabled = $true
        }
    )
}