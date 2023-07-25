#!/usr/bin/env Rscript

args = commandArgs(trailingOnly=TRUE)
if (length(args) != 1) {
        stop('a name is required')
}
cat('Hello ', args[1], '!', sep='')