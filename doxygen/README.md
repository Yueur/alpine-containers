

Don't forget to set your folder in the volume `/srv/workdir` (check Dockerfile for ENV variable `DEFAULT_WORKDIR`)

If no option is given it will generate a config file at root of `$DEFAULT_WORKDIR`


For testing just run sequentially
`./init-test-folder.sh`
`./generate.sh`
`./generate-config.sh`

