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

        import warnings
        warnings.filterwarnings('ignore')

        import tensorflow as tf
        import numpy as np
        from tensorflow.keras.utils import load_img, img_to_array

        # ✅ Download model if not exists
        if not os.path.exists("lungmodel.h5"):
            import gdown
            url = "https://drive.google.com/uc?id=15DdJ-Fy7mQUyi1wTmas6HDAVQ72cbZre"
            gdown.download(url, "lungmodel.h5", quiet=False)

        # Load model
        model = tf.keras.models.load_model("lungmodel.h5")

        # Preprocess image
        img = load_img(file_path, target_size=(200, 200))
        img_array = img_to_array(img) / 255.0
        img_array = np.expand_dims(img_array, axis=0)

        # Prediction
        result = model.predict(img_array)
        pred_index = np.argmax(result[0])

        classes = ['Covid', 'Influenza', 'Normal', 'Pneumonia', 'Tuberculosis']
        output = "Pneumonia'

        return render_template('index.html', result=output)

# -------------------- RUN --------------------
if __name__ == "__main__":
    app.run()
