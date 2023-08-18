# Habitica Todos by tag
Mini Python application that fetches your [Habitica](https://habitica.com/) account and lists your Todos categorized by tag.

## Instructions

### Setup
Clone or download the code and install the library denpendencies, e.g. using `pip`
```bash
pip install -r requirements.txt
```

### Habitica API credentials
In order for the application to get access to your account information, it will require your `API User ID` and `API Token`.
The credentials can be found under your [Habitica account API settings page](https://habitica.com/user/settings/api) (under the User menu click "Settings" then "API"). As stated by the page itself, caution on sharing your `API Token` with anyone else.

Once you find your credentials, copy the `.env.example` file, rename the copy to `.env` and place it in the same directory (root).
Edit your `.env` file and add the `API User ID` and `API Token` credentials to the respective variables.

### Run the application.
Run the `main.py` script
```bash
python main.py
```
and as the output should confirm the application will load under the local web address `http://localhost:8080/` .
Exit by using `Ctr+C`.
