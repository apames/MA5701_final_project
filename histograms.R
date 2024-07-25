hr_data <- read.csv("MA5701/MA5701_final_project/WA_Fn-UseC_-HR-Employee-Attrition.csv")
attach(hr_data)

# Histogram of Distance From Home
hist(hr_data$DistanceFromHome,
    breaks = seq(0, max(hr_data$DistanceFromHome), by = 1),
    main = "Histogram of Distance From Home",
    xlab = "Distance From Home",
    ylab = "Frequency",
    col = "blue",
    border = "black"
)

# Create a table of counts for WorkLifeBalance
work_life_balance_counts <- table(hr_data$WorkLifeBalance)

# Create a bar plot
barplot(work_life_balance_counts,
        main = "Bar Plot of Work Life Balance",
        xlab = "Work Life Balance",
        ylab = "Frequency",
        col = "lightblue",
        border = "black",
        names.arg = c("Bad", "Good", "Better", "Best"))


# job level
job_level_counts <- table(hr_data$JobLevel)
barplot(job_level_counts,
        main = "Bar Plot of Job Level",
        xlab = "Job Level",
        ylab = "Frequency",
        col = "lightblue",
        border = "black",
        names.arg = c("1", "2", "3", "4", "5"))

# job satisfaction
job_satisfaction_counts <- table(hr_data$JobSatisfaction)
barplot(job_satisfaction_counts,
        main = "Bar Plot of Job Satisfaction",
        xlab = "Job Satisfaction",
        ylab = "Frequency",
        col = "lightblue",
        border = "black",
        names.arg = c("Low", "Medium", "High", "Very High"))

# monthly income
breaks_seq <- seq(0, max(hr_data$MonthlyIncome, na.rm = TRUE)+1, by = 1000)
hist(hr_data$MonthlyIncome,
    breaks = breaks_seq,
    main = "Histogram of Monthly Income",
    xlab = "Monthly Income (USD)",
    ylab = "Frequency",
    col = "blue",
    border = "black"
)

# marital status
marital_status_counts <- table(hr_data$MaritalStatus)
barplot(marital_status_counts,
        main = "Bar Plot of Marital Status",
        xlab = "Marital Status",
        ylab = "Frequency",
        col = "lightblue",
        border = "black",
        names.arg = c("Single", "Married", "Divorced"))


# attrition
attrition_counts <- table(hr_data$Attrition)
barplot(attrition_counts,
        main = "Bar Plot of Attrition",
        xlab = "Attrition",
        ylab = "Frequency",
        col = "lightblue",
        border = "black",
        names.arg = c("Yes", "No"))