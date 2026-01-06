"""
Agent Orchestrator
Decomposes user commands into multi-step intents
"""

def generate_intents(command):
    return [
        {"step": 1, "action": "Verify permissions"},
        {"step": 2, "action": "Record intent on-chain"},
        {"step": 3, "action": "Execute approved workflow"}
    ]
