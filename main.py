from fastapi import FastAPI

#Create a fatsapi object
app = FastAPI()

#Create an endpoint (route)
@app.get("/")
async def root():
    return {"message": "Hello World, I work !"}

#Another endpoint with parameter
@app.get("/{name}")
async def hello(name: str): # We have to assign the type of the parameter
    return {"message": f"Hello, {name}!"}
    # The f-string above is equivalent to:
    # "Hello," + name + "!"
    # "Hello, {}!".format(name)