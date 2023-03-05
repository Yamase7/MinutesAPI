import openai
import os

APK_KEY = "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"


def chat_gpt(input):
    openai.api_key = APK_KEY  # API KEYをセット
    openai.Model.list()  # OpenAIのインスタンスを生成

    # APIを使ってリクエストを投げる
    # response = openai.Completion.create(
    #     model = "text-ada-001",
    #     prompt= prompt,
    #     temperature=0,
    #     max_tokens=300,
    #     top_p=1.0,
    #     frequency_penalty=0.0,
    #     presence_penalty=0.0)
    response = openai.ChatCompletion.create(
        model="gpt-3.5-turbo",
        messages=[
            {
                "role": "system",
                "content": "あなたは、議事録の記録係です。markdown形式で議事録を記録してください。"
            },
            {
                "role": "user",
                "content": get_file_data("SampleContents.txt")
            },
            {
                "role": "assistant",
                "content": get_file_data("SampleMinutes.md")
            },
            {
                "role": "user",
                "content": input
            },
        ])

    response = response["choices"][0]["message"]["content"]
    return response


def get_file_data(file_name):
    file = os.path.join(os.getcwd(), 'templates', file_name)
    with open(file, encoding="utf-8") as f:
        file_data = f.read()
    return file_data
