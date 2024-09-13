---- Number 1 ----
SELECT * FROM Users

WHERE DateOfBirth BETWEEN '01-01-2000' AND '12-31-2024';

---- Number 2 ----
SELECT * FROM Posts

WHERE PostedBy = 4;

---- Number 3 ----
SELECT GroupName FROM Group;

---- Number 4 ----
SELECT * FROM GroupMembershipRequests

WHERE GroupMemberUserID = 2;

---- Number 5 ----
SELECT * FROM Users

JOIN Friends ON 
    Users.UserID = Friends.FriendBeingAdded OR Users.UserID = Friends.FriendsWhoAdded
WHERE (FriendBeingAdded = 2 OR FriendBeingAdded = 2)
AND Users.UserID is not 2
AND IsAccepted = true;

---- Number 6 ----
SELECT * FROM Friends

WHERE FriendsWhoAdded = 1;

---- Number 7 ----
SELECT * FROM Posts
WHERE GroupID = 2 AND IsPublic = false AND IsOnlyForFriends = false;

---- Number 8 ----
SELECT * FROM GroupMembershipRequests
WHERE GroupID = 2 AND IsGroupMemberShipAccepted = false;