data "azuredevops_agent_queue" "agent_queue_lookup" {
  for_each = var.agent_queue_lookup

  name       = each.value.name
  project_id = each.value.project_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

