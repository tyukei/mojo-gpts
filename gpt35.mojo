from python import Python
import math

fn round_up_to_second_decimal(value: Float16) -> Float16:
    return math.ceil(value * 100) / 100

fn chat_response() -> None:
    try:
        var openai = Python.import_module("openai")
        var os = Python.import_module("os")
        var dot_env = Python.import_module("dotenv")
        dot_env.load_dotenv()
        var api_key =  os.getenv('OPENAI_KEY')
        var client = openai.OpenAI(api_key=api_key)
        var dictionary = Python.dict()
        dictionary["role"] = "user"
        var builtins = Python.import_module("builtins")
        var time_function = Python.import_module("time")

        dictionary["content"] = builtins.input("Enter your message: ")
        var start = time_function.time()
        var messages = Python.list()
        messages.append(dictionary)
        
        var completion = client.chat.completions.create(
            model="gpt-3.5-turbo",
            messages=messages
        )
        print(completion.choices[0].message.content)
        var end = time_function.time()
        var seconds = (end - start)
        print("Chatbot response took", seconds, "seconds to run")
    except e:
        print("An error occurred:", e)

fn main() -> None:
    chat_response()


