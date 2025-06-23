from os import getenv
from google.adk.agents import Agent
from dotenv import load_dotenv

load_dotenv()

# Define your agent
root_agent = Agent(
    name="greeter_agent",
    instruction="You are a Google Search agent. Answer and summarize any questions you are asked.",
    model=getenv("GOOGLE_GEMINI_MODEL")
)
