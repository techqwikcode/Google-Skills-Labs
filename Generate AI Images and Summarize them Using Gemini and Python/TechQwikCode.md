# 🌐 Generate AI Images and Summarize them Using Gemini and Python 🚀 [![Open Lab](https://img.shields.io/badge/Open-Lab-blue?style=flat)](https://www.skills.google/games/7007/labs/43537)

## ⚠️ Disclaimer ⚠️

<blockquote style="background-color: #fffbea; border-left: 6px solid #f7c948; padding: 1em; font-size: 15px; line-height: 1.5;">
<strong>Heads Up:</strong> This resource is here to help you learn and for educational purposes only! Check out the script to see how the cloud services connect—it’s a great way to boost your skills. 
 <br><br>
 <strong>Play by the Rules:</strong> Make sure you’re following the guidelines for Qwiklabs and YouTube. Let’s use this to learn more effectively, not just to bypass the challenge!
</blockquote>

---

<div style="padding: 15px; margin: 10px 0;">

## ☁️ Run in Shell:

```
import vertexai
from vertexai.preview.vision_models import ImageGenerationModel
from vertexai.generative_models import GenerativeModel, Part

def generate_bouquet_image(prompt: str) -> str:
    vertexai.init()

    model = ImageGenerationModel.from_pretrained(
        "imagen-4.0-generate-001"
    )

    images = model.generate_images(
        prompt=prompt,
        number_of_images=1
    )

    image_path = "bouquet.jpeg"
    images[0].save(image_path)

    print(f"Image generated and saved as {image_path}")
    return image_path


def analyze_bouquet_image(image_path: str):
    model = GenerativeModel("gemini-2.5-flash")

    # Read image as binary (required)
    with open(image_path, "rb") as f:
        image_bytes = f.read()

    image_part = Part.from_data(
        data=image_bytes,
        mime_type="image/jpeg"
    )

    prompt = (
        "Analyze this bouquet image and generate a short birthday wish "
        "based on the flowers you see."
    )

    # ❗ STREAMING DISABLED (checker requirement)
    response = model.generate_content(
        [prompt, image_part],
        stream=False
    )

    print("Birthday wish:")
    print(response.text)


if __name__ == "__main__":
    prompt = "Create an image containing a bouquet of 2 sunflowers and 3 roses"
    image_path = generate_bouquet_image(prompt)
    analyze_bouquet_image(image_path)
```

</div>

---

## 🎉 **Congratulations! Lab Completed Successfully!** 🏆  

<div style="text-align:center; padding: 10px 0; max-width: 640px; margin: 0 auto;">
  <h3 style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin-bottom: 14px;">📱 Join the Tech Qwik Code Community</h3>

  <a href="https://www.youtube.com/@techqwikcode?sub_confirmation=1" style="margin: 0 6px; display: inline-block;">
    <img src="https://img.shields.io/badge/Subscribe-TECH%20QWIK%20CODE-FF0000?style=for-the-badge&logo=youtube&logoColor=white" alt="YouTube Channel">
  </a>

  <a href="https://t.me/techqwikcode" style="margin: 0 6px; display: inline-block;">
    <img src="https://img.shields.io/badge/Telegram-Tech%20QWIK%20CODE-0088cc?style=for-the-badge&logo=telegram&logoColor=white" alt="Telegram Channel">
  </a>
</div>

---

<div align="center">
  <p style="font-size: 12px; color: #586069;">
    <em>This guide is provided for educational purposes. Always follow Qwiklabs terms of service and YouTube's community guidelines.</em>
  </p>
  <p style="font-size: 12px; color: #586069;">
    <em>Last updated: January 2026</em>
  </p>
</div>
