# Cron Expression Parser

This project is a cron expression parser implemented in Ruby. It provides a mechanism to parse, interpreting cron expressions to extract the individual components and display in meaningful way.

## Features

- Parses cron expressions to extract minute, hour, day of month, month, day of week components and command.
- Handles special characters like "*", "/", "," and "-" to generate the appropriate list of values for each component.
- Supports validation of cron expressions.

## Getting Started

### Prerequisites

- Ruby (version 2.5 or higher)

### Installation

1. Clone the repository:

   ```shell
   git clone https://github.com/your-username/cron-expression-parser.git
2. Run command:

   ```shell
   ruby cron_parser.rb "*/15 0 1,15 * 1-5 /user/bin/find"
2. Run tests on a specific file:

   ```shell
   bundle install
   example : rspec specs/factories/expression_parser_spec.rb
