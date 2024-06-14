# mojo-gpts
This is a simple example of using mojo to serve gpt2 and gpt3.5 models.

## Setup

1. Install dependencies
    ```
    python3 -m venv .venv
    source .venv/bin/activate
    pip install --upgrade pip
    pip install -r requirements.txt
    ```
1. check mojo 
    ```
    mojo --version
    ```
1. Run mojo
    ```
    mojo gpt2.mojo
    ```


## gpt2
I use transformers library to load the model and tokenizer.
so you don't need to set api key.
https://huggingface.co/docs/transformers/en/model_doc/gpt2

## usage
```
mojo gpt2.mojo
```

## gpt3.5
I use openai's gpt3.5 model.
You need to set api key in `.env` file.
```
copy .env.copy .env
echo "OPENAI_API = 'your api key'" >> .env
```
https://platform.openai.com/api-keys

## usage
```
mojo gpt3.5.mojo
```
