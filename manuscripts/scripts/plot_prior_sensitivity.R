#!/usr/bin/env Rscript

source("beastling_plots.R")

option_list = list(
    make_option(c("-d", "--prior_dates"), type="character", default="", 
                help="input dataset file name", metavar="character"),
    make_option(c("-r", "--posterior_dates"), type="character", default="", 
                help="input dataset file name", metavar="character"),
    make_option(c("-x", "--prior_path"), type="character", default=getwd(), 
                help="input log file path [default= %default]", metavar="character"),
    make_option(c("-y", "--posterior_path"), type="character", default=getwd(), 
                help="input log file path [default= %default]", metavar="character"),
    make_option(c("-p", "--plotpath"), type="character", default=getwd(), 
                help="output plot path [default= %default]", metavar="character"),
    make_option(c("-n", "--plotname"), type="character", default="prior_sensitivity_analysis", 
                help="output plot name[default= %default]", metavar="character"),
    make_option(c("-c", "--ci"), type="numeric", default=0.95, 
                help="hpd or credible interval [default= %default]", metavar="numeric"),
    make_option(c("-b", "--burnin"), type="numeric", default=0.1, 
                help="burnin to discard [default= %default]", metavar="numeric"),
    make_option(c("-f", "--dateformat"), type="character", default="min-max", 
                help="date format of --dates [default= %default]", metavar="numeric"),
    make_option(c("-e", "--logext"), type="character", default=".log", 
                help="log file extension of beast outputs [default= %default]", metavar="numeric"),
    make_option(c("-g", "--namesplit"), type="character", default=".log", 
                help="file name split taking first of split for id with --dates [default= %default]", metavar="numeric"),
    make_option(c("-s", "--slice"), action="store_true", default=FALSE, 
                help="sample proportion is slices pre-sample / sample period [default= %default]"),
    make_option(c("-i", "--infectious"), type="numeric", default=NULL, 
                help="set a limit on the infectious period (can have long tail sometimes) [default= %default]")
); 

opt_parser = OptionParser(option_list=option_list);
opt = parse_args(opt_parser);




# Required catches


extract_prefix <- function(fname){
    s <- stringr::str_split(fname, opt$namesplit)[[1]]
    label <- s[1]
}

prior_dates <- read.table(file = opt$prior_dates, row.names = 1, sep="\t")
colnames(prior_dates) <- c('first_sample_year', 'last_sample_year')

posterior_dates <- read.table(file = opt$posterior_dates, row.names = 1, sep="\t")
colnames(posterior_dates) <- c('first_sample_year', 'last_sample_year')


posterior <- read_log_files(
    path=opt$posterior_path, logpattern=paste0("*", opt$logext), data=posterior_dates, sample_slice=opt$slice,
    burnin=opt$burnin, hpd=opt$ci, extract_label_function=extract_prefix
)

prior <- read_log_files(
    path=opt$prior_path, logpattern=paste0("*", opt$logext), data=prior_dates, sample_slice=opt$slice,
    burnin=opt$burnin, hpd=opt$ci, extract_label_function=extract_prefix
)

plot_prior_sensitivity(
    prior$posterior, posterior$posterior, plot_path = opt$plotpath
)