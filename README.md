# video-on-demand-with-nosql-database
Demo Video On Demand streaming application using GraphQL and NoSQL

# Lab 2/Task 2: Get Data and Code Bundle

```shell
cd $HOME
rm -rf addendum-livelab
git clone https://github.com/dario-vega/addendum-livelab.git
cd $HOME
```
# Lab 3/Task 2: NoSQL Tables Deployment

```shell
source ~/video-on-demand-with-nosql-database/env.sh
cd ~/addendum-livelab
DDL_TABLE=$(cat demo-vod/demo-stream-acct.ddl)
echo $DDL_TABLE
```
```shell
oci nosql table create --compartment-id "$NOSQL_COMPID"   \
--name stream_acct --ddl-statement "$DDL_TABLE" \
--table-limits="{\"maxReadUnits\": 50,  \"maxStorageInGBs\": 25,  \"maxWriteUnits\": 50 }" \
--wait-for-state SUCCEEDED --wait-for-state FAILED
```

Review the DDL commands

```shell
cd ~/addendum-livelab/demo-vod
more demo-stream-acct-idx*.ddl | cat
```

Execute the create-table.js application. Execute in the Cloud Shell.

```shell
cd ~/addendum-livelab/demo-vod
node create-table.js
```
