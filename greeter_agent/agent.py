from os import getenv
from google.adk.agents import Agent
from dotenv import load_dotenv

load_dotenv()

# Define your agent
root_agent = Agent(
    name="greeter_agent",
    instruction="You are a greeter agent. Greet the user with a friendly welcome.",
    model=getenv("GOOGLE_GEMINI_MODEL")
)
