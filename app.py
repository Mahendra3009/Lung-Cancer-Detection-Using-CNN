from flask import Flask, render_template, request
import os

app = Flask(__name__)
app.config['SECRET_KEY'] = 'secret'

# -------------------- HOME --------------------
@app.route("/")
def homepage():
    return render_template('index.html')

@app.route("/Home")
def Home():
    return render_template('index.html')

# -------------------- PREDICTION --------------------
@app.route("/predict", methods=['GET', 'POST'])
def predict():
    if request.method == 'POST':
        file = request.files['file']

        upload_path = "static/upload"
        os.makedirs(upload_path, exist_ok=True)

        file_path = os.path.join(upload_path, "test.jpg")
        file.save(file_path)

        # ✅ DEMO OUTPUT (no TensorFlow)
        output = "Pneumonia"

        return render_template('index.html', result=output)

# -------------------- RUN --------------------
if __name__ == "__main__":
    app.run()
