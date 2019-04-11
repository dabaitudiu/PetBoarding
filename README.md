# FindPetCaring

## Usage

### Database Generation
```
Run in the following sequence:
1. user_info
2. owner_info
3. customer_info
4. pet_info
5. customer_pet_info
6. appointments
7. owner_appointments
8. customer_appointments
9. reviews
10. service
11. owner_service
12. factions
```

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
- (Forget to add) A return to search/index page button.

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



