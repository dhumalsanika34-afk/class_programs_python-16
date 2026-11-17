class FileHandler():

 def read_file(self):
           
    try:
        file=open("simple.txt","r")
        data=file.read()
        print(data)
    except FileNotFoundError:
                print("error:file not found")
    except PermissionError:
           print("per:permission denied")
    except Exception as e:
           print(e)
    finally:
           file.close()

obj=FileHandler()
obj.read_file()     
                
