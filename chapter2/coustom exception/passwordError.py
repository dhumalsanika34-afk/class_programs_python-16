class PasswordError(Exception):
    pass
def set_password(password):
    if len(password)<6:
        raise  PasswordError ("password must be 6 charecters.")
    print ("password set")
try:
    set_password(123564)
except PasswordError as e:
 print(f"error:{e}")