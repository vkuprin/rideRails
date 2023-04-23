### Remove old installed node_modules
```
ncu -u  && rm -rf node_modules && yarn
```
### Clear cache
```
rails tmp:clear
```
### Install migrations
```
rails db:migrate
```
### Seeding
```
rails db:seed
```
### Remove all DB content and reseed
```
rails db:seed:replant
```
### Delete cache 
```
rm -rf public/packs*/
```
