variable "agent_queue_lookup" {
  description = <<EOT
Map of agent_queue_lookup, attributes below
Required:
    - name
    - project_id
Optional:
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    name       = string
    project_id = string
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.agent_queue_lookup : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.project_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.agent_queue_lookup : (
        length(trimspace(v.name)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
}

