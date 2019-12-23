# FindPetCaring

## Introduction
This is a website where you can find a pet sitter for your pets when you are not free. 
At this website, you can:<br>
- View intro:<br><br><img src="https://github.com/dabaitudiu/PetBoarding/blob/master/images/index.png" width="60%">

- Specify your preferences and pick the best sitter that fits your requirements:<br><br><img src="https://github.com/dabaitudiu/PetBoarding/blob/master/images/select.png" width="60%">

- Check a service provider's profile:<br><br><img src="https://github.com/dabaitudiu/PetBoarding/blob/master/images/profile.png" width="60%">

- Register as a member:<br><br><img src="https://github.com/dabaitudiu/PetBoarding/blob/master/images/register.png" width="60%">

- Make an appointment with the service provider:<br><br><img src="https://github.com/dabaitudiu/PetBoarding/blob/master/images/appointment.png" width="60%">

- Check your order status:<br><br><img src="https://github.com/dabaitudiu/PetBoarding/blob/master/images/check_order_status.png" width="60%">


- As a service provider, you have your own backstage:<br><br><img src="https://github.com/dabaitudiu/PetBoarding/blob/master/images/formal_backstage.png" width="60%">




## How to deploy this project

#### 0 Install nodejs

#### 1 Database Generation
```
Run in the following sequence:
1. \i tables/user_info.sql
2. \i owner_info.sql
3. \i customer_info.sql
4. \i pet_info.sql
5. \i customer_pet_info.sql
6. \i appointments.sql
7. \i owner_appointments.sql
8. \i customer_appointments.sql
9. \i reviews.sql
10. \i service.sql
11. \i owner_service.sql
12. \i factions.sql
```

#### 2 Run
```shell
cd app
node bin/www
```
then go to your explorer, type: localhost:3000

### Page Clarification
**to view all functions without front-end, approach to branch01**

#### 1. /index: Index Page
You can make a search here. Afterwards, it will post the info to /search page.

#### 2. /search: Main Search page
- If you do not specify any constraints, recommended 20 results will be shown.
- You must specify a kind of pet. Other constraints include: house_type, pet_age, date, ratings, etc.
- (Not finished) You can rank the results according to the choice you made in search constraints.
- After a search, results will be shown on the right side. The number of results will be shown. 
- In the right result cards, you can pick one and find the owner's detail information

#### 3. /owner_info: Detail information of the service providers.
- On the left side, there is a "CONTACT ME". If you have made your choice, click it and it will direct you to the appointment page.

#### 4. /appointment: Appointment page.
- Page where you can make appointment with the service provider you chose. You need to enter your customer_id to finish the appointment. All the input columns need to be filled. Besides, If you are not a member, you cannot finish this process. 

#### 4./app_success: Appointent status page.
- If you successfully made an appointment, the details of the appointmet and contact information of the service provider will be shown on the screen. However, if you fail to fulfill all the appoinment registration requirements, an error message will be returned.

#### 5. /order_list: Admin check for all existing appointments
- Show all the infos (app_id, cus_id, own_id, own_name, cus_name, date, time, etc.)
- (Not finished) Ranking.

#### 6. /service: Admin check for all existing services
- You can choose to modify your service info at this page.

#### 7. /modifyservice: Service modifcations: ADD/UPDATE/DELETE
- You can add/update/delete your services here. Note there are a few constraints. If you violate any one of them, an alert message will be shown.

#### 8. /signup: Sign up page for all users.
- You can sign up as a new member. Note: If you are not a member, you can't make an appointment.

#### 9. /signup_success: signup status page

#### 10. /login: Login page.
- You can login in on this page.



