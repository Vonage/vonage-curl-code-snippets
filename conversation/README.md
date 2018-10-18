# README

## Testing Conversation API Curl scripts

These are some notes on testing the Conversation API using these Curl scripts.

Eventually I would like to write an automated script to do this but for now it's manual.

### config.local.sh

You will need to create a `config.local.sh` file. This will contain:

```
NEXMO_APPLICATION_ID="Your APP_ID"
NEXMO_PRIVATE_KEY="/path/to/private.key"
```

These are used to generate a valid JWT for authenticating your API calls.

You can also add the following to the file:

```
CONVERSATION_ID=""
USER_ID=""
MEMBER_ID=""
EVENT_ID=""
LEG_ID=""
```

These are used to test various objects in the Conversation API.

### Conversation

1. Create a Conversation - set the variable `CONVERSATION_ID` in your `config.local.sh` file.
2. List Conversations - confirm `CONVERSATION_ID` returned is as expected.
3. Get a Conversation
4. Update a Conversation - you can change the name of the Conversation for example. Use `get-conversation.sh` to check the change.
5. Delete a Conversation - then list Conversations again to make sure it has been removed

Create a new Conversation before moving on to testing User. Make sure you update `config.local.sh`.

### User

1. Create a User - set the variable `USER_ID` in your `config.local.sh` file.
2. List Users 
3. Get a User
4. Update a User - then use get-user.sh to make sure the user was updated.
5. Get a User Conversations - the user has not been joined to any conversations so this will be an empty array.
6. Delete a User - list users to confirm empty array is returned.

Create a new User before proceeding. Make sure you update `config.local.sh`.

### Member

1. Create a Member - this will invite a user into a conversation. Add the `MEMBER_ID` to your `config.local.sh`.
2. List Members
3. Get a Member
4. Update a Member - this will change the member from `invited` to `joined`. Use get member to confirm.
5. Delete a Member - Use list members to confirm deletion - the User will have a state `LEFT` as the mebership has been dissolved.

Create a new Member before proceeding. Make sure you update `config.local.sh`.

At this point you will have two members (with same `USER_ID`), one with status `LEFT` and one with `invited`.

### Event

Create an Event
List Events
Get an Event
Delete an Event

### Leg

List Legs
Delete a Leg

