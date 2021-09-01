#!/usr/bin/env Rscript

if (!require("pacman")) install.packages("pacman")

pacman::p_load_gh("laduplessis/bdskytools")
pacman::p_load(ggplot2, cowplot, svglite, ggridges, RColorBrewer, optparse)


option_list = list(
    make_option(c("-m", "--most_recent"), type="character", default=NULL, 
                help="most recent sample in the coalescent skyline log file collection [default= %default]", metavar="character"),
    make_option(c("-l", "--logpath"), type="character", default=getwd(), 
                help="input log file path [default= %default]", metavar="character"),
    make_option(c("-e", "--logext"), type="character", default=".log", 
                help="log file extension of beast outputs [default= %default]", metavar="numeric")
); 

opt_parser = OptionParser(option_list=option_list);
opt = parse_args(opt_parser);


source("beastling_plots.R")

get_cosky_plot(path=opt$logpath, pattern=paste0("*", opt$logext), most_recent=as.numeric(opt$most_recent))

