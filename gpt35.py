import openai
import os
from dotenv import load_dotenv
import time

def main():
    load_dotenv()
    api_key = os.getenv('OPENAI_KEY')
    client = openai.OpenAI(api_key=api_key)

    user_message = input("Enter your message: ")
    start_time = time.time()
    messages = [
        {
            "role": "user",
            "content": user_message
        }
    ]
    
    response = client.chat.completions.create(
        model="gpt-3.5-turbo",
        messages=messages
    )
    print(response.choices[0].message.content)
    end_time = time.time()
    print(f"Time taken: {end_time - start_time:.2f} seconds")
    
if __name__ == "__main__":
    main()
