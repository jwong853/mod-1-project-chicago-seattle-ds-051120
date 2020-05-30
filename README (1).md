# Module 1 Data Science Project -- Group 1

In this project, we hoped to learn about an often misunderstood demographic of Seattle's youth. These are the so-called Opportunity Youth (OY). These people are defined as young people between the ages of 16-24 who are disengaged from both work and school. We had been supplied a report from 2016, that found that there were around 19,000 such people in the South King County region. We set out to see if this number was still an accurate representation of the facts, using the more recent data from the 2013-2017 American Community Survey.

## Repository Structure
* notebooks
  * exploratory -- a folder containing our jupyter notebooks used for digging into the data
  * report -- contains our final report notebook
* references
* requirements
* src
  * data
  * reports
    * figures
* [virtual environment yml](./environment.yml)


## Results Overview

Overall, our analysis found that not much had changed in terms of the proportion of Opportunity Youths in the South King County region. We found that we classified 12% of all people 16-24 years old in the region OYs, while the original report had found 13%. 
![](./src/reports/figures/final-table.png)

As you can see, our proportion of OYs increases with our age brackets. Another thing we found was that compared to the rest of king county, the area that we deemed South King County still had a much higher proportion of OYs, which was consistent with the 2016 study.


## Our Dataset

The dataset we used was mostly made up of data collected from the American Community Survey (ACS), which acts as a sort-of continuous census program. It is a great source for more up-to-date and detailed population and housing information. This information was provided to us divided up into areas of the county known as Public-Use Microdata Areas, or PUMAs. These are statistical regions made up of no fewer than 100,000 people. The entries in our provided table were made up of hundreds of columns, with a few that were especially relevant to our interests. Once we identified these, we were able to start getting some usable information from this huge dataset.


## Our Process

Our first major hurdle was trying to identify the exact region the preceding study was dealing with. They used the term 'South King County', but this seems to be more of a colloquial term. Making sure our data was coming from the same place was obviously important, and using a few different sources we eventually narrowed our area of interest down to 6 PUMAs, as shown below:
![](./visualizations/pumas-map.png)

Our next goal was to comb through the data and choose which variables we would use to determine whether or not someone was an OY. Obviously we would restrict the age to between 16 and 24 years, but for determining school and employment status, it wasn't so clear. We found the tags applicable to employment status to be ESR (Employment Status) and WKL (When Last Worked). For schooling status we used the tags SCH (School Enrollment) and SCHL (Educational Attainment). After running queries on the dataset, we found our matches. As expected, the regions in South King County had proportionally more OYs then elsewhere in the county, as seen here:
![](./visualizations/oy-map.png)

From there we just started breaking down the data and analyzing it in different ways. We broke it down by PUMA first, and as you can see below, the southeastern, most rural region has the fewest OY, while the smaller, more urban regions have more:
![](./visualizations/oy_king.png)
One of the most interesting breakdowns was by age group. We looked at the age ranges of 16-18, 19-21, and 22-24. Again, our more rural PUMA (11615) stands out as having almost no OYs who are minors:
![](.src/reports/figures/age-chart.png)

We also looked at the levels of academic achievement amoung our OYs. This can be seen in the table in the opening section. An interesting takeaway from this was that while around half of our OYs had a high school diploma or its equivalent, nearly 1/3 had no degree at all. Further research into specific conditions of OYs can be found in our final notebook. For example, we found that in the South King County PUMAs, almost a quarter of people have a greater than 30 minute commute to work. This could be a factor for people with no means of transportations that would make it difficult to hold on to a job.




## Conclusions
Some main takeaways from this study have been:
1. This demographic is most concentrated in the south of King County
2. A lot of people classified as OYs have outside factors contributing to this, such as recently giving birth, or having no available jobs nearby.
3. The proportion of people classified as OYs has not changed much since the 2016 study


This demographic of young people is of considerable importance for a few reasons. Figuring out what causes these people to become disengaged in this way could help us learn how to bring them into the work force. But it is important to understand that most people don't come to this by choice. Homelessness, lack of transportation, race and gender discrimination, and other external factors have a huge effect on a population's work force. It seems like strengthening the safety-net system in a community like King County's could go a long way towards keeping people from falling out of society.

 



