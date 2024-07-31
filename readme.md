
# Deep logic AI open source contribution assingment 

### About the assingment

About: Provides an end to end ecommerce website with functionalities, like login, register user, add, delete, update items in cart, do checkout and payment.

The original project is available at https://github.com/justdjango/django-ecommerce


Problem Statement: A contribution towards an open source Django Project

Solution: Added enable/disable item feature in the backend

Description: Allows the admin to disable or enable an existing item, all items are `active=True` by default, filters out the item which are set `active=False`, if user has already added the items in the cart, those will again filtered out and removed from the user cart, if the user tries to hit the api to add the item in cart, it will not be added. 


Intuition: I scanned through 10 - 12 django based projects,  most of them was was already having a lot of good functionalities, could have implemented a random feature but it might be of no use,

Came accross this project, after browsing for a file, i realised it lacks a basic functionality, this functionality does have a real world use case, to the admin of the website, and the end user too, i tried to deploy the app too on lambda, but having some issues with db, considering the tight deadlines submitting till, feature completion and working dockerized image.

Extras: If given more time, I had 3 more features in mind, which are global sale, where admin can apply discount to all of the items present, a category wise discount, periodic sale (discount based on time period), this can be done on the view side with minimal changes in existing schema.

### Installation
#### Direct deploy server to the local.

1. `pip install -r requirements.txt`
2.  do migrations `python manage.py migrate` 
3.  create a super user, `python manage.py createsuperuser` or a super user is already there with `admin` username and password, so you can skip.
4. run the server `python manage.py runserver`


#### Running Docker image
1. build the docker image, i.e. `docker build -t dj-ecom .`
2. run the image `docker run -p 8333:8000 dj-ecom`.
3. the app will be available at localhost:8333.


### Testing functionality

1. Do login, Add some items in the cart.
2. after adding, head to admin panel, and disable some items,
3. head back to home page, you'll notice the disabled items are not there
4. go to your cart, the disabled items will be removed.