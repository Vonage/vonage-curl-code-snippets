# README

Curl code snippets for Applications v2.

- [x] Create Application
- [x] List Applications
- [x] Get Application
- [x] Update Application
- [x] Delete Application

## Testing

1. Run Create Application and make a note of the Application ID.
2. Set `NEXMO_APPLICATION_ID` in `config.local.sh` using the ID you got from step 1.
3. Run List Applications to confirm that your newly created v2 application is there. Both v1 and v2 applications should be listed by this script.
4. Run Get Application to get the details of the Application you created in step one (using the ID configured in step 2).
5. Run Update Application to change the application name and configure the application capabilities.
6. Use Get Application again to confirm the name has changed and capabilities have been set.
7. Use Delete Application to remove the application you created.
8. Use Get Application or List Applications to confirm removal of the application.

---
