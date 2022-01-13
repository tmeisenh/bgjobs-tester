# bgjobs-tester

An example on how to have two backgrounded processes that need to run together and fail the whole shebang if one of them exits with an error but NOT if one exits safely.

`shortRunning.sh` a short process that can exit with success or failure

`longRunning.sh` an infinite process that will not exit

`master.sh` the thing that ties the processes together

```bash
./master.sh
... runs forever
```

edit `shortRunning.sh` to have false instead of true

```bash
./master.sh
exits quickly
```
