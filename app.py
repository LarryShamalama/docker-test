from flask import Flask
import os

app = Flask(__name__)
app.config["UPLOAD_FOLDER"] = "static"

@app.route("/")
def hello():
    file_name = os.path.join(app.config["UPLOAD_FOLDER"], "cake.png")
    return render_template("index.html", user_image=file_name)

app.run(port=5000)

if __name__ == "__main__":
    print(app.config["UPLOAD_FOLDER"])
