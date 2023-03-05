from utils import chat_gpt
from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()


class Item(BaseModel):
    name: str
    price: float


class VoiceData(BaseModel):
    data: str


@app.get("/")
async def root():
    return {"message": "Hello World"}


@app.post("/items")
def update_item(item: Item):
    return {"item_name": item.name, "twice price": item.price * 2}


@app.get("/items/{item_id}")
def read_item(item_id: int, q: str = None):
    if q:
        return {"item_id": item_id, "q": q}
    return {"item_id": item_id}


@app.post("/generate")
def update_item(input: VoiceData):
    return chat_gpt(input.data)
