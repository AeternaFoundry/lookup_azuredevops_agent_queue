output "agent_queue_lookup_id" {
  description = "Map of id values across all agent_queue_lookup, keyed the same as var.agent_queue_lookup except keys with no id are omitted"
  value       = { for k, v in data.azuredevops_agent_queue.agent_queue_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "agent_queue_lookup_agent_pool_id" {
  description = "Map of agent_pool_id values across all agent_queue_lookup, keyed the same as var.agent_queue_lookup except keys with no agent_pool_id are omitted"
  value       = { for k, v in data.azuredevops_agent_queue.agent_queue_lookup : k => v.agent_pool_id if v.agent_pool_id != null }
}
output "agent_queue_lookup_name" {
  description = "Map of name values across all agent_queue_lookup, keyed the same as var.agent_queue_lookup except keys with no name are omitted"
  value       = { for k, v in data.azuredevops_agent_queue.agent_queue_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "agent_queue_lookup_project_id" {
  description = "Map of project_id values across all agent_queue_lookup, keyed the same as var.agent_queue_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.azuredevops_agent_queue.agent_queue_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}

