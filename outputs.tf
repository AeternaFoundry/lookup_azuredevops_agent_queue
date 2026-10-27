output "agent_queue_lookup_id" {
  description = "Map of id values across all agent_queue_lookup, keyed the same as var.agent_queue_lookup"
  value       = { for k, v in data.azuredevops_agent_queue.agent_queue_lookup : k => v.id }
}
output "agent_queue_lookup_agent_pool_id" {
  description = "Map of agent_pool_id values across all agent_queue_lookup, keyed the same as var.agent_queue_lookup"
  value       = { for k, v in data.azuredevops_agent_queue.agent_queue_lookup : k => v.agent_pool_id }
}
output "agent_queue_lookup_name" {
  description = "Map of name values across all agent_queue_lookup, keyed the same as var.agent_queue_lookup"
  value       = { for k, v in data.azuredevops_agent_queue.agent_queue_lookup : k => v.name }
}
output "agent_queue_lookup_project_id" {
  description = "Map of project_id values across all agent_queue_lookup, keyed the same as var.agent_queue_lookup"
  value       = { for k, v in data.azuredevops_agent_queue.agent_queue_lookup : k => v.project_id }
}

