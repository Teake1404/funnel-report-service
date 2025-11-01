import os

LOG_LEVEL = os.getenv("LOG_LEVEL", "INFO")
OUTLIER_THRESHOLD = 0.20
ANTHROPIC_API_KEY = os.getenv("ANTHROPIC_API_KEY", "sk-ant-api03-test-key")
CLAUDE_MODEL = "claude-sonnet-4-5-20250929"
GA4_PROPERTY_ID = os.getenv("GA4_PROPERTY_ID", "123456789")
