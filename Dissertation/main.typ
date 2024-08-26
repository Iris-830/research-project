#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "research project",
  authors: ((name: "Miao Qi", email: "pvzs64@durham.ac.uk"),),
  // Insert your abstract after the colon, wrapped in brackets.
  // Example: `abstract: [This is my abstract...]`
  abstract: [abstract],
  date: "August 13, 2024",
)

// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!
#show link: underline
#show outline.entry.where(level: 1): it => {
  v(12pt, weak: true)
  strong(it)
}
#outline(title: [Table of Contents], indent: auto, depth: 3)

#show figure: set block(breakable: true)

= Introduction
（Article citation: Ending obstetric fistula by 2030: A call for transformative action and strategic partnerships to address the protracted crisis in West and Central Africa）
@baba_birth_nodate

@weston_obgyn_nodate

@noauthor_obstetric_2005

@noauthor_womens_2024

= Literature Review
（Transition sentence, linking the introduction and the literature review）

@capes_obstetric_nodate

@khisa_understanding_2017

== Definition of Key Terms
=== Fistula

Fistula is an abnormal connection between two body parts.
@medlineplus_hemoglobin_2024 When a woman has a fistula, a tube forms between the
vagina and the bladder or rectum that causes leakage of urine or
stool.@cook_obstetric_2004 Common types of fistulas in women are obstetric
fistulas, vesicovaginal fistulas, and rectovaginal fistulas. Obstetrical fistula
is the most common, accounting for 79% to 100%, followed by rectovaginal fistula
(1% to 8%) and vesicovaginal with rectovaginal fistula (1% to 23%).
@tebeu_risk_2012 Due to the fact that it is impossible to identify the specific
kind of fistula that the women had in the dataset, fistula was considered
broadly in this research.

=== West Africa

West Africa covers more than a quarter of the African continent and consists of
16 countries, including Benin, Burkina Faso, Cape Verde, Côte d'Ivoire, The
Gambia, Ghana, Guinea, Guinea-Bissau, Liberia, Mali, Mauritania, Niger, Nigeria,
Senegal, Sierra Leone, and Togo. @bossard_regional_2009 This research finally
chose 6 West African countries: Côte d'Ivoire, Guinea-Bissau, Mali, Nigeria,
Sierra Leone, and Togo. These 6 countries include both coastal and inland areas,
with diverse languages and customs. It is economically diverse, with Nigeria
having the greatest economy and Guinea-Bissau the smallest. Therefore, these 6
countries are representative and can well reflect the characteristics of West
Africa.

=== Women of Reproductive Age

Women of reproductive age range from 15 to 49 years. @who_family_2024
Following this standard, this research explored the factors related to fistula
in West African women of childbearing age.

== Theoretical Framework

After clarifying the concepts of fistula, West Africa, and women of childbearing
age, it is necessary to explore the factors influencing fistula in West African
women of reproductive age. As a health problem, in order to better understand
the relevant factors at various levels, social determinants of health are chosen
as the starting point, and then a specific analysis will be conducted through a
comprehensive framework of health factors.

Social determinants of health (SDH) are non-medical factors that have an impact
on health outcomes, comprising 30%-55% of them. These aspects mostly involve
economics, society, personal life, and access to medical care. @marmot_who_2012
In order to have a more comprehensive understanding of the factors affecting
fistula, these levels will be divided into upstream and downstream factors.
Health outcomes are jointly influenced by a series of upstream and downstream
factors. The upstream social determinants of health are more fundamental causal
parts that can deal with health inequity from its root. Economic and societal
variables influence living conditions. The lower the socioeconomic class, the
worse the health. Personal conduct, family planning, and access to medical care
are downstream factors that have a direct impact on health outcomes under the
influence of upstream factors. @braveman_social_2011 @marmot_health_2010
According to the SDH theory and the upstream and downstream framework of health,
the theoretical framework of this study is as follows:
#figure(
  image("理论框架.svg", width: 80%),
  caption: [Theoretical Framework of Social Determinants of Fistula],
)

== Related Factors

Based on the theoretical framework, the factors affecting fistula will be
investigated from four aspects.

=== Economic and Social Status

Wealth

Wealth, as an economic indicator, influences fistula. A study on the
determinants of obstetric fistula in Ethiopia discovered that wealth
significantly affects the incidence of obstetric fistula.
@andargie_determinants_2017 This is because poverty reduces access to health
services and accessibility to health care, which in turn increases the risk of
disease. @deribe_measuring_2020 As a result, economic disparity may lead to
differences in the risk of disease and cause health imbalances.

Education

Education level is one of the factors. The uneducated women in Ethiopia have the
highest incidence rate. @andargie_determinants_2017 An analysis of 14 African
countries found that educated women have a significantly lower risk of fistula.
@alie_counting_2021 It is due to more educated women have better access to
healthcare facilities, which contributes to minimize the possibility of fistula.
@rettig_female_2020 More educated women are more likely to recognize fistula and
seek treatment to avoid the disease.

Occupation

Another factor influencing fistula is employment status. In Ethiopia, unemployed
women have higher chance of suffering from fistula. @andargie_determinants_2017
Furthermore, a research in Kenya discovered that unemployed women with fistulas
were more likely feel depression. This demonstrates how occupation influences
the prevalence of fistula in women. @weston_obgyn_nodate These findings
illustrate that employment status has an important effect on women's physical
and psychological wellbeing. Employment can increase income, increasing the
probability of receiving health care and lowering the risk of sickness.

=== Personal and Family Background

Age

Age is also a factor. Obstetric fistula is primarily caused by difficult
delivery. Due to inadequate pelvic development in teenagers, the size of the
fetal head and the maternal pelvis may not match, leading to Obstructed labour.
@noauthor_obstetric_2005 According to research, adolescent pregnant women are
more likely to suffer from fistula. @tebeu_risk_2012 Early pregnancy may be
linked to poor education levels and a lack of sex education.

Religion

Religion emerged as a confounding variable in a study conducted in Sub-Saharan
Africa. @maheu-giroux_risk_2016 Because in rural communities, religious beliefs
play an important role in women's experience with fistula.
@gatwiri_better_2017 Different religions have different attitudes on illnesses
such as fistula, which can prevent women from seeking medical care in a timely
manner. For example, in Nigeria, religious people are more likely to prefer
spiritual treatments than medical care. @oluwabamide_assessment_2011 This may
lead to delays in care before and after childbirth, increasing the risk of
fistula.

Residence

Residence is a significant factor influencing fistula incidence. In Ethiopia, a
2005 study found that rural women had a higher prevalence of fistula than urban
women. @andargie_determinants_2017 Similarly, statistical analysis from 2016
showed that rural women were more likely to have fistula than urban residents.
@gedefaw_estimating_2021 A multi-level investigation of 14 African countries
also found that urban women had a lower risk of fistula than rural women.
@alie_counting_2021 However, in another African study, urban women had a higher
prevalence. This could be owing to easier access to care in cities, which may
encourage more patients to relocate. @maheu-giroux_prevalence_2015 These
findings indicate that the impact of residence on fistula may differ by
geography. When there are less medical services in rural regions, the risk of
fistula increases, and cities may acquire more fistula cases from surrounding
areas due to the accessibility of medical facilities. It is necessary to
consider the residence factor in a local context.

Height and Weight

Height and weight are additional variables that could influence a fistula. The
body mass index (BMI) can be computed using weight and height. Obese Ethiopian
women with a BMI above 30 are at a higher risk of developing obstetric fistulas.
@andargie_determinants_2017 Being overweight can increase the risk of obstetric
fistula, which is the main cause of obstetric fistula.

=== Medical Services and Health

Postpartum Care

One of the factors is postpartum care. Women's education level has an impact on
their usage of health care, according to a study conducted across 14 African
nations. More attention is paid to health services by those with higher
education degrees. @alie_counting_2021 In addition, a further study revealed
that women who are economically independent are more likely to have access to
healthcare services. Postpartum care is a health service, which can effectively
reduce the incidence of vaginal fistula. @deribe_measuring_2020 Postpartum care
is an important part of protecting maternal health. Women can prevent and detect
gynecological problems in time through professional care. This can reduce the
risk of fistula.

Place of Delivery

The place of delivery is also essential. In Ethiopia, women who give birth at
home have a much higher incidence of fistula than those who give birth in health
facilities or other places. @andargie_determinants_2017 Giving birth in a
hospital enables for early diagnosis and treatment. Due to a lack of awareness
about fistula, giving birth at home or in other places without trained
professionals may be unable to identify the disease. This will lead to a delay
in therapy.

Distance to Medical Facilities

Distance to health facilities is a key factor affecting the risk of fistula. A
study using data from the 2016 Ethiopian Demographic and Health Survey indicated
that women who live distant from health facilities face a higher risk of fistula
due to lack of timely access to necessary medical interventions.
@gedefaw_estimating_2021 A study on maternal mortality in 8 West African
countries showed that maternal referral service utilization in remote areas was
low, which exacerbated the risk of childbirth. @ronsmans_maternal_2003 These
findings demonstrate that long distances and inconvenient transportation may
cause pregnant women to have prolonged labor and increase the risk of fistula.
@tebeu_risk_2012 Being closer to health facilities makes it easier to receive
professional delivery and postpartum care, which effectively prevents the
occurrence of fistula.

Professional Delivery

It is also important to consider whether the delivery was performed
professionally. Lack of access to safe cesarean sections during hard labor and
exposure to dangerous birthing methods can make fistulas more prevalent, since
they have a greater tendency to be at risk of iatrogenic injury.
@mama_pelvic_2022 Areas with a lack of trained hospital staff and suitable
surgical options during labor might result in major complications, such as
fistula.

=== Family Planning and Sexual Health
Contraception Use

Not using contraception is a risk factor for fistula. Contraception can reduce
pregnancy-related health risks for women, particularly adolescent girls.
@who_family_2024 According to a 2016 study in Ethiopia, women who did not
use contraception had a 3.43 times higher risk of getting a fistula than those
who did. @gedefaw_estimating_2021 Reducing the possibility of pregnancy
decreases the probability of fistula.

Age of First Sexual Intercourse

The age of first sexual intercourse is also associated with the occurrence of
fistulas. Having first sexual intercourse at a younger age is easier to result
in a fistula. @maheu-giroux_risk_2016 Being younger means that the pelvis may
not be fully developed, increasing the chance of a fistula when one is become
pregnant. Delaying the age of first sexual intercourse and using proper
contraception are excellent approaches to lower the risk.

Total Births

The number of births should also be considered. In a Nigerian investigation,
primiparas proved to be more fragile and thus more prone to disease.
@ijaiya_vesicovaginal_2010 Furthermore, limiting the total number of births
through family planning can effectively lower the chance of pregnancy causing
fistula. @gedefaw_estimating_2021 It means that limiting the number of
pregnancies, particularly in high-risk women, can reduce the chance of getting
fistula.

Sexual Violence

The final factor is sexual violence. Sexual violence is not a common cause of
fistula. However, more than one in five women in conflict zones report having
fistula caused by sexual violence. @maheu-giroux_prevalence_2015 A research in
sub-Saharan Africa have also shown that sexual violence significantly affects
vaginal fistula. @maheu-giroux_risk_2016 Moreover, sexual violence was a major
indicator of traumatic fistula in Rwanda and Malawi. @peterman_incontinence_2009
While sexual violence is not common, it can be a substantial risk factor for
fistula in certain areas.

== Fistula in West Africa

Obstetric fistula is a public health issue in West Africa. The incidence of
fistula is high in West Africa, especially in poor areas. @nathan_obstetric_2009
Women without proper medical resources are more prone to get fistulas. Although
the incidence varies by region in West Africa, the prevalence of obstetric
fistula in most West African countries is significantly higher than the global
average. For example, Nigeria, a country with a good economic level in West
Africa, has a significantly higher incidence of vesicovaginal fistula,
especially in the northern part of the country, where women become more easy to
experience a fistula due to prolonged labor. @ijaiya_vesicovaginal_2010

The main causes of fistula in West Africa are prolonged labor, unskilled
delivery, caesarean sections, and birth customs related to early marriage and
early childbearing. These factors are further exacerbated by poverty, ignorance
and culturally embedded traditional attitudes. @ijaiya_vesicovaginal_2010 For
example, many women are unable to access quality care due to financial
limitations and cultural restrictions, resulting in serious complications during
childbirth and ultimately fistula formation. @ronsmans_maternal_2003

Fistulas have an impact on not just physical health, but also psychological and
social well-being. Fistula patients in West Africa may face shame, divorce, and
social exclusion. For example, in Mali and Niger, women with fistula frequently
face divorce, polygamous husbands remarrying and husbands disappearing.
@ouedraogo_obstetric_2018

Fistula repair surgery has a high success rate in some regions of West Africa,
but overall treatment remains challenging. In Niger, where early marriage and
pregnancy are widespread, obstetric fistula is extremely common. Repair success
rates are high for first-time patients, but much lower for complex situations
where many procedures have failed. @ouedraogo_obstetric_2018 This indicates that
treating complex cases remains difficult. Additionally, access to treatment is
restricted, with many patients unable to receive prompt treatment due to
financial barriers.

In summary, the problem of obstetric fistula in West Africa must be treated
seriously. In addition to improving the quality of healthcare, the impact of
socioeconomic, cultural and personal concepts on women's health should also be
positively guided in order to reduce the prevalence of fistula.

== Research Gaps and Future Research Directions

=== Gaps Found in Current Research

Obstetric fistula is still not a priority in many resource-poor countries,
especially West Africa. This is reflected in the lack of data on fistula
prevalence in some areas. @cowgill_obstetric_2015 In addition, the reliability
of some existing data must be enhanced. @noauthor_research_2018 This has
inhibited some research on local factors influencing fistula, and thus prevented
targeted policy recommendations from being made.

While current research has investigated various features of fistula, there is
missing of data on specific fistula forms. @tweneboah_awareness_2023 There is
also a lack of scientific study on fistula, including a lack of prevalence
studies and a lack of research on barriers to fistula treatment.
@baker_barriers_nodate @creanga_prevention_2007 This research also lacks data
to identify specific categories. This issue restricts study into the factors
that influence each fistula type and does not provide specific recommendations
for different fistula types.

In addition, while there have been studies on factors influencing fistula, such
as the economy and education, there has been inadequate study on how these
factors combine. Furthermore, there is a dearth of research on the impact of
cultural practices and psychological aspects. @elkins_fistula_1997 This research
will involve religious factors as a supplement to the study on cultural customs.

=== Research Gaps in the West African Context

From the 19 studies chosen for risk factors for fistula, 15 were from
Sub-Saharan Africa and four from the Middle East. @tebeu_risk_2012 This reflects
a lack of studies focused on West Africa. Furthermore, West African countries
such as Côte d'Ivoire face issues with poor data quality and potential
underestimate. @noauthor_towards_2022

=== Future Research Directions

Future studies should focus on how stigma affects fistula patients.
@changole_i_2017 It is vital to treat not only the medical disease, but also any
psychological issues that occur. For example, research can focus on eliminating
misconceptions that contribute to stigma. @roush_social_2009
@bashah_consequences_2018 Research might also be undertaken on how to
successfully reintegrate into society. @khisa_understanding_2017 Furthermore,
prevention measures for fistulas should better identify specific risk factors in
different countries. @tebeu_risk_2012 West African countries urgently require
efficient national fistula treatment and prevention initiatives.
@noauthor_towards_2022 When developing strategies, consider close integration
with the Sustainable Development Goals. @slinger_obgyn_2020

== Summary

Although current research proves that fistula is a severe problem in Africa, and
some studies have explored the fistula problem in some West African countries,
there is a lack of data on the prevalence and influencing factors of fistula in
West Africa as a whole. By summarizing the relevant elements impacting fistula
in various regions, the common connected factors are identified in @Table1.
#figure(
  caption: "Summary of Relevant Literature on Determining Influencing Factors",
  table(
    columns: (auto, auto),
    align: center,
    stroke: none,
    table.hline(),
    table.header([*Factors*], [*References*]),
    table.hline(),
    [Wealth],
    [@andargie_determinants_2017 @deribe_measuring_2020],
    [Education],
    [@andargie_determinants_2017 @alie_counting_2021 @rettig_female_2020],
    [Occupation],
    [@andargie_determinants_2017 @weston_obgyn_nodate],
    [Age],
    [@noauthor_obstetric_2005 @tebeu_risk_2012],
    [Religion],
    [@maheu-giroux_risk_2016 @gatwiri_better_2017 @oluwabamide_assessment_2011],
    [Residence],
    [@andargie_determinants_2017 @gedefaw_estimating_2021 @alie_counting_2021 @maheu-giroux_prevalence_2015],
    [Height and Weight],
    [@andargie_determinants_2017],
    [Postpartum Care],
    [@alie_counting_2021 @deribe_measuring_2020],
    [Place of Delivery],
    [@andargie_determinants_2017],
    [Distance],
    [@gedefaw_estimating_2021 @ronsmans_maternal_2003 @tebeu_risk_2012],
    [Professional Delivery],
    [@mama_pelvic_2022],
    [Contraception Use],
    [@who_family_2024 @gedefaw_estimating_2021],
    [Age of First Sexual Intercourse],
    [@maheu-giroux_risk_2016],
    [Total Births],
    [@ijaiya_vesicovaginal_2010 @gedefaw_estimating_2021],
    [Sexual Violence],
    [@maheu-giroux_prevalence_2015 @maheu-giroux_risk_2016 @peterman_incontinence_2009],
    table.hline(),
  ),
) <Table1>

This study will analyze the prevalence and regional differences of fistula in
six West African countries. At the same time, different influencing factors in
West Africa and specific countries will be explored. Finally, a data dashboard
will be built to visually represent the research findings. This work contributes
to the current literature on regional variations in fistula in West Africa and
provides a dashboard for presenting and analyzing these data. This will allow
for a more comprehensive understanding of the prevalence and determinants of
fistula in West Africa.

= Methodology
== Research Objectives
The literature review part include a brief description of the research
questions. The specific research objectives are as follows:

1. Identify regional gaps in the determinants of fistula in West Africa. Understand
  the special circumstances of fistula in various areas through analyzing the
  prevalence in West Africa and each country, as well as the prevalence under
  different factors. Analyze the similarities and differences in influencing
  factors among countries.

2. Investigate the economic and social, personal background, health care
  utilization, family planning, and sexual health aspects related to fistula in
  women of reproductive age in West Africa. Using quantitative analysis methods,
  determine how related factors affect the prevalence of fistula in different West
  African countries.

3. Create a data dashboard to visualize the prevalence of fistula in West Africa,
  as well as the social determinants of women of childbearing age. The design of
  the dashboard can help users to have a better knowledge of the social
  determinants of fistula in women of reproductive age in West Africa, supporting
  the implementation of appropriate policies for different areas.

== Data Source
The data used in this study are from the Demographic and Health Survey (DHS) dataset. The DHS program has conducted more than 400 surveys in more than 90 countries to collect and analyze accurate and representative demographic and health data. @dhs_program At first, data from 9 West African countries were considered. After data preparation, the decision was made to concentrate the analysis on 6 countries. The detailed information for each country dataset is shown in @Dataset-Information:

#figure(
  caption: "Dataset Information",
  table(
    columns: (25%, 15%, 35%, 25%),
    align: center,
    stroke: none,
    table.hline(),
    table.header([*Country*], [*Year*], [*Sample Range*], [*Sample size*]),
    table.hline(),
    [Cote d'Ivoire],
    [2021],
    [All women 15-49 years],
    [14877],
    [Guinea Bissau],
    [2018],
    [All women 15-49 years],
    [10874],
    [Mali],
    [2018],
    [All women 15-49 years],
    [10519],
    [Nigeria],
    [2018],
    [All women 15-49 years],
    [41821],
    [Sierra Leone],
    [2019],
    [All women 15-49 years],
    [15574],
    [Togo],
    [2013],
    [All women 15-49 years],
    [9480],
    table.hline(),
  ),
) <Dataset-Information>

This study uses data from the Demographic and Health Survey (DHS), which used a complicated multi-stage sampling design. The survey includes both stratified and cluster sampling. To ensure sample representativeness, stratified sampling takes place at the national, residential, and regional levels. A two-stage cluster sampling design is developed using stratified sampling. Data collecting involves selecting households at random from each urban block or village.@dhs_program_methodology

To verify that the results are nationally representative, this research used the DHS dataset's weight column. After the weight adjustment, the results can better reflect the characteristics of the disease.

== Research Flow Chart
The flow chart of this research is shown in Figure 2:

#figure(
  image("framework.svg", width: 200%),
  caption: [Research Flow Chart],
)

== Data Preprocessing
Before data analysis, preprocessing was performed to ensure data integrity. The specific steps are as follows:

1. Dataset merging: The initial data consisted of 9 independent DHS datasets. First, variables were screened for each dataset. All variables relevant to the research objectives were selected. Subsequently, these variables were recoded to ensure consistency in variable classification. Finally, the 9 processed datasets were combined into one complete dataset.

2. Missing value processing: First, all missing value samples in the target variable experienced_fistula were deleted in the integrated complete data set. Secondly, the missing values of three variables (sexual violence, weight, and height) were removed by a cross-tabulation analysis. Although the factors of postpartum care and professional delivery have more missing values than others, they are maintained due to their significant impact on the study. Furthermore, the cross-analysis revealed that because the number of women who reported having a fistula in Gambia and Niger was less than 50, the proportion in each sample was less than 0.04%. This proportion is extremely low, making it difficult to conduct effective analysis. As for Burkina Faso, although the number of women who reported having fistula is relatively large, there are a large number of missing answers to related factors. After removing missing values from the relevant variables, the remaining data accounted for less than 0.02%. To verify the reliability and representativeness of the data analysis, data from Burkina Faso, Gambia, and Niger were removed.

3. Processing weights: The DHS dataset contains a weight variable, V005, which is used to adjust the sample to ensure that the analysis results are nationally representative. In the process of processing weights, V005 is first divided by 1,000,000, and then the processed weights are applied to the data in the analysis design. This process ensures that the data analysis results can be utilized across the country.

4. Variable Definition and Classification: The variable definitions and classifications maintained in this research are as follows: 
   
  experienced_fistula: The survey question "Have you ever experienced a problem of urine or stool leakage from the vagina?" is the source of this variable. The responses are coded as 0 for "No" and 1 for "Yes," indicating whether the respondent has ever had a fistula.

  V005: This variable represents the sample weight provided in the dataset, which is used to ensure that the survey results are representative of the national population.

  country: This variable specifies the name of the country where the data was collected.

  wealth: Wealth is categorized into five levels, with 1 being the poorest and 5 being the wealthiest: 1: Poorest; 2: Poorer; 3: Middle; 4: Richer; 5: Richest.

  education: Education level is categorized as follows: 0: No education; 1: Primary education; 2: Secondary education; 3: Higher education.

  occupation: Employment status is categorized into three groups: 0: Not working; 1: Working; 2: Don't know.

  religion: Religion is categorized into five groups: 1: Muslim; 2: Christian; 3: Animist; 4: No religion; 5: Other religions.

  residence: This variable indicates the respondent's place of residence, coded as: 1: Urban; 2: Rural.

  age: Age is categorized into seven groups, each representing a five-year interval: 1: 15-19 years; 2: 20-24 years; 3: 25-29 years; 4: 30-34 years; 5: 35-39 years; 6: 40-44 years; 7: 45-49 years.

  distance: This variable represents whether the respondent perceives the distance to a health facility as a significant problem in obtaining medical help. The responses are coded as: 0: Not a big problem; 1: A big problem.

  delivery_place: This variable represents the place of delivery. Considering that the respondents may have given birth more than once, the answers are divided into: 1: Never delivered in a health facility; 2: Occasionally delivered in a health facility; 3: Always delivered in a health facility.

  postpartum_care: This variable indicates whether the respondent received postpartum care, considering all births, and is categorized as: 1: Always received postpartum care; 2: Occasionally received postpartum care; 3: Never received postpartum care.

  delivery_professional: This variable indicates whether the delivery was assisted by a professional, considering all births, and is categorized as: 1: Always had professional assistance; 2: Occasionally had professional assistance; 3: Never had professional assistance.

  contraception_use: This variable indicates the current contraceptive method used, categorized as: 1: Modern medical methods; 2: No contraceptive use; 3: Other contraceptive methods. And modern medical contraceptive methods include contraceptive pills, condoms, IUDs, sterilization, etc.

  age_sex: This variable indicates the age at which the respondent first had sexual intercourse. It is categorized into four groups: 0: Never had sexual intercourse; 1: First sexual intercourse between 8-19 years; 2: First sexual intercourse between 20-49 years; 3: First sexual intercourse at the time of first cohabitation. The age group of 8-19 is significant because the pelvis may be underdeveloped during these years compared to adult.

  number_birth: This variable represents the total number of births. It is categorized as: 0: Three or fewer children; 1: Four or more children. This classification allows for the distinction between lower and higher birth rates and their potential impact on fistula incidence.

== Analytical Methods

=== Descriptive Statistics

  Descriptive statistics can grasp the fundamental properties and distribution of data, establishing the groundwork for future study. First, calculate descriptive statistics for each variable in this research, including the mean, quartile, standard error, maximum, and minimum values. After that, category the variables by country and analyze differences in distribution between them. This provides an adequate understanding of each variable's central tendency and dispersion. Second, calculate the prevalence of each variable in West Africa. And creat a horizontal categorized bar chart to display the fistula prevalence of each factor in different categories. It assists in better understanding the impact of each factor on fistula. Next, compute the prevalence of each variable in West Africa by country. This time, use facet maps and heat maps to compare the relationship between various factors and fistula prevalence in different countries. Then perform feature analysis and visualization.Explore West Africa and each country from the following four perspectives: individual and family background, economic and social status, access to health care, and family planning and sexual health. Use charts to illustrate the correlation between the relevant factors and prevalence. Feature analysis provides key insights into the causes and influencing factors of fistula in West Africa. Finally, do multiple correspondence analysis (MCA) to investigate the relationships between the key variables in West Africa and each country. This reveals the variable combination patterns that are unique to each country and compare the differences between different countries.

=== Bivariate Analysis

  Bivariate analysis explored the association between two variables. Considering the existence of weights, chose the weighted generalized linear model analysis. In the GLM analysis, use the quasibinomial family since the target variable is a dichotomous variable. The analysis of West Africa and each country separately assists in determining whether factors are significantly connected with the development of fistula. The weighted chi-square test follows to confirm the relationship between each variable and the occurrence of fistula. The outcomes of the GLM analysis may also be supported by the chi-square test. It also helpful in identifying significant correlations that may exist in different areas.

=== Survey-weighted Generalised Linear Models

   Survey-weighted Generalized Linear Models (svyglm) are used to identify the important determinants influencing fistula in West African women of reproductive age. The analysis steps are as follows: multicollinearity check, basic model fitting, interaction term analysis, and final model selection.

1. Multicollinearity Check

  The variance inflation factor (VIF) is calculated before constructing the weighted regression model to determine whether there is an issue with multicollinearity among the independent variables. First, the selected variables are subjected to regression analysis using the ordinary generalized linear model (GLM). Then the VIF is computed. If the VIF is larger than 5, it indicates a multicollinearity concern. The VIF test results for West Africa and other countries show that all variables' VIF values below 5. As a result, it is assumed that there is no significant multicollinearity problem. The multicollinearity problem will have no effect on the succeeding svyglm model's variable estimate.

2. Basic Model Fitting
  
  Use the weighted generalized linear model (svyglm) for analysis after checking that there is no multicollinearity issue. This is because the data set has a complex sampling design and the target variable is a binary variable (experienced_fistula). Svyglm is an extension of the generalized linear model (GLM) that considers complicated sampling designs. It can adjust the model estimation by considering sample weights, stratification, and clustering to make the results more accurate. The basic model formula is as follows:

  $ "logit(P(Y=1))" = beta_0+beta_1 X_1+beta_2 X_2+ dots + beta_k X_k $

  Y is the target variable experienced_fistula, which indicates whether a fistula has been experienced. X1, X2,..., and Xk are independent variables. The logit function turns the dependent variable into log odds, making it suitable for binary data.

  In order to ensure the validity of the model, it is necessary to test the five key assumptions of the model. The model assumptions are as follows:

  1. Assume that there is no significant multicollinearity between the independent variables: each variable in the model is independent of the others, and there is no high correlation to assure the model's estimation reliability.

  2. Assume that the samples are independent of one another: Each sample in the data is independent of the others. This means that the results of one sample will have no effect on the results of the others.

  3. Assume that the model has no overdispersion: the model residuals follow the theoretical binomial distribution.

  4. Assume the model uses a suitable link function: the chosen link function can represent the relationship between the independent variable and the binary dependent variable.

  5. Assume that the model has a reasonable fit: the model fits the data well and can explain the variability of the data.

  This research uses the following strategies to verify the hypothesis:

  1. Multicollinearity: The generalized linear model (GLM) is used to conduct regression analysis on the independent variables and calculate the variance inflation factor (VIF). The results demonstrate that the values for the VIF are less than 5, implying that there is no significant multicollinearity.

  2. Sample Independence: To create the svyglm model, set id = ~1. In this way, each observation can be considered independent.

  3. Overdispersion: When creating the svyglm model, the quasibinomial family is used to adjust the potential overdispersion problem.

  4. Link Function: Logit is the standard function for dealing with binary dependent variables. The quasibinomial family chosen for the model uses the logit function by default, thus it fits the hypothesis.

  5. Model Fit: The Akaike Information Criterion (AIC) is used to evaluate and compare the fit between the original and final models. The lower the AIC value, the better the model fits. The final model's fit, which confirms the rationality of the validated significant variables, is indicated by a reduced AIC value.


3. Stepwise Validation of Interaction Terms

  Due to the large number of variables, this research uses the gradual addition method to simplify the model and investigate the interaction between upstream economic and social characteristics (wealth, education, occupation) and other downstream aspects.

  The specific steps involve adding only one interaction term at a time to the base model. The interaction term has two sides: the upstream and downstream factors. For example, add wealth*postpartum_care to the base model, then run the svyglm model to check the importance of the interaction term. Then, in the next analysis, replace postpartum_care with age, rerun the model, and check the significance of the new interaction term.

  If an interaction term is significant, it shows a meaningful interaction between the upstream and downstream factors. As a result, the independent factors (such as wealth and postpartum_care) are included as important variables in the final model.

  Furthermore, relevant interaction terms are investigated. Cross-tabulations are used to calculate fistula prevalence under various categorization combinations, and heat maps are used to highlight the true impact of these interaction effects.

4. Model Determination and Evaluation

  The final factors influencing fistula are the combination of the important factors in the basic model and the significant factors in the interaction analysis. The final models of West Africa and each country are fitted again using svyglm, and the AIC is calculated to assess the quality of fit. Then the AIC is compared to that of the base model. The findings reveal that the final model's AIC value is lower than that of the basic model, indicating that it is better.

== Summary

In this research, the weighted generalized linear model (svyglm) is used primarily to identify major factors influencing fistula in West Africa and other countries. The svyglm model can effectively identify factors that are significantly correlated with the target variable, as well as investigate the interaction between upstream factors (such as wealth, education, and occupation) and downstream factors by gradually adding interaction terms. 

Although the svyglm model cannot automatically capture variable interactions, this research makes up for this limitation by gradually adding interaction terms, enabling a more comprehensive analysis of the complicated relationship between variables.

This research method can not only identify the impact of individual variables, but also deeply explore the joint effects of upstream and downstream factors through the analysis of interactions. Finally, through using this methodology comprehensively, the study effectively reveals the major factors that have a substantial impact on the occurrence of fistula in West Africa and other countries.

= Data Visualization

= Results Analysis

== Upstream Factors
=== Wealth
在西非地区，Wealth 的平均值为2.827，显示多数女性处于“较贫困”和“中等”之间，但 Wealth 分布不均，表明存在财富不平等问题。虽然各国之间的 Wealth 分布大致相近，但 Togo 的平均 Wealth 值较低（2.16），可能反映出该国经济状况相对较差。

从 fistula 患病率来看，经济较好的群体（Wealth 指数为4）患病率最高，约为1.69%，而最贫困女性的患病率最低，仅为0.99%。在 Cote d'Ivoire 和 Guinea-Bissau，富裕女性的患病率较高，特别是在 Guinea-Bissau，最富裕女性群体患病率达到7.4%。相反，Sierra Leone 呈现出与 Wealth 负相关的趋势。Togo 在较贫困和较富裕人群中患病率较高。而Mali 和 Nigeria 的 fistula 患病率无论贫富均较低。

总体而言，Wealth对fistula的影响在不同国家表现出显著差异。Togo，Cote d'Ivoire和GuineaBissau显示出较强的相关性。表明经济状况可能是这些国家中fistula患病率的主要影响因素。MCA 和双变量分析均表明，Wealth在西非和部分国家对患病率分布有显著贡献。这些结果在 svyglm 分析中得到进一步确认，显示 Wealth在西非， Cote d'Ivoire，Guinea-Bissau，Sierra Leone 和 Togo中是影响fistula的关键因素之一。

综上所述，Wealth对fistula的影响在西非地区及其各个国家中表现出复杂且多样的关联性。在一些国家富裕女性的患病率更高，这表明 Wealth并非唯一的决定因素，患病率还可能受到其他因素的影响。通过后续的交叉分析，可以更深入地探讨 Wealth 与其他因素的交互作用，揭示wealth作为上游因素是如何影响fistula的。

=== Education
在西非地区，education 的平均值为0.72，显示多数女性处于“无教育”和“初级教育”之间。Nigeria（0.97）和Sierra Leone（0.84）的教育水平相对较高，但也主要集中在初等教育。而其他国家女性平均教育水平更低，大部分处于无教育状态，显示出教育机会的严重不足。

从 fistula 患病率来看，西非的教育程度与患病率呈现负相关趋势。教育程度越高，患病率越低。塞拉利昂、尼日利亚、马里和多哥基本遵循这一规律。科特迪瓦的整体患病率较高，尤其是在高等教育阶段。几内亚比绍的患病率在所有国家中最高，随着教育水平的提升患病率逐渐降低，但在高等教育阶段则出现最低患病率的例外情况。

总体而言，education对fistula的影响在不同国家表现出显著差异。GuineaBissau和Cote d'Ivoire显示出较强的相关性。表明教育状况可能是这些国家中fistula患病率的影响因素之一。MCA分析表明，教育对西非和各国的患病率分布有显著贡献。双变量分析显示，在西非和塞拉利昂，教育是显著影响因素。svyglm分析则表明，教育是西非及各国（除Guinea-Bissau外）影响瘘管患病率的关键因素之一。

综上所述，教育对fistula的影响在西非地区及其各个国家中表现出多样化的关系。尽管在大多数国家，教育水平较低的群体患病率更高，但这一趋势并不绝对，尤其在某些国家，教育与患病率的关系更为复杂。这表明教育并非唯一的决定因素。进一步的交互分析将有助于更深入理解教育与其他因素的相互作用，从而揭示教育作为上游因素对瘘管患病率的具体影响。

=== Occupation
在西非地区，occupation 的平均值为0.901，显示多数女性处于工作状态。各个国家的数据也显示大部分女性都是有工作的。

在西非整体，以及Mali、GuineaBissau、和Cote d'Ivoire，工作的女性患病率较低，呈现出负相关趋势。在尼日利亚，虽然没有工作的样本较少，但工作女性的患病率非常低。相比之下，Togo和Sierra Leone的工作女性患病率更高。而值得注意的是，无论工作与否，GuineaBissau的女性患病率在所有国家中最高。在问卷中，少数女性选择了“不知道”选项，可能是由于不愿提供具体信息。总体而言，除了GuineaBissau这部分女性的患病率较低。不过由于样本数量较少，这部分数据无法与明确工作状态的群体直接对比。

总结来看，occupation与瘘管患病率在西非地区表现出显著的关系。MCA分析表明，occupation在西非整体、科特迪瓦、尼日利亚、马里和塞拉利昂对瘘管患病率有显著影响，而在几内亚比绍和多哥的影响较为微弱。双变量分析进一步证实了西非整体、尼日利亚和塞拉利昂的工作状态与瘘管患病率存在显著关联。而svyglm分析则揭示了除马里外的所有国家中，occupation都是显著影响因素，这在一些国家可能与交互项的作用有关。

综上所述，occupation在多数西非国家中是影响瘘管患病率的重要因素，尽管其影响在各国之间有所不同。

== Downstream Factors
=== Age
在西非地区，age的平均值为3.46，表明20-39岁的女性占据了较大比例。各国中，女性人数最多的年龄段也集中在这一范围内。

在西非整体，45-49岁和15-19岁女性的患病率最高。其他年龄段的患病率也都超过了1.1%。几内亚比绍和塞拉利昂的患病率较高，且随着年龄的增长逐渐加重；而尼日利亚和马里则表现出较低的患病率，尤其在老年群体中更为轻微。科特迪瓦的年轻女性患病率较高，而多哥则在中年女性中患病率显著增加。

总体而言，年龄变量在不同分析中的表现具有一定的差异性。GuineaBissau和塞拉利昂的数据显示，年龄与fistula患病率存在较强的相关性，说明年龄可能是患病率的影响因素之一。MCA分析中，虽然年龄对第一维度的影响有限，但是在第二维度上年龄在西非整体及各个国家中都有较大的贡献。双变量分析显示，在Nigeria和Togo，age是显著影响因素。svyglm分析进一步确认了年龄在尼日利亚、塞拉利昂和多哥中的重要性，强调了其对fistula的重要影响。

综上所述，年龄是影响西非地区瘘管患病率的重要因素，尤其是年轻和老年群体需要特别关注。

=== Religion
在西非地区，religion的平均值为1.338，表明大多数受调查者信仰“Muslim”。在大多数国家中，除了多哥（Togo）以外，信仰穆斯林的比例占据主导地位。而Togo大部分女性信仰Christian和Animist。

总体来看，在西非地区，穆斯林群体的患病率最高，而其他宗教群体的患病率相对较低。SierraLeone的基督教患病率最高。Togo的无信仰女性的患病率最高。而其他国家都是muslim的患病率最高。其中，GuineaBissau不管是信仰muslim还是基督教的女性患病率都异常高于其他国家的水平。

MCA分析表明，在Nigeira和Togo，religion对fistula有作出一定贡献。双变量分析显示，在西非，GuineaBissau，Mali和Nigeria，religion是显著影响因素。进一步的svyglm分析表明，除了Cote d'Ivoire外，宗教在其他国家对患病率都有显著影响，凸显了其对fistula的影响力。

在西非地区，宗教对健康状况具有显著的影响，特别是在穆斯林占主导地位的国家中，穆斯林群体的患病率普遍较高。宗教在影响女性健康，特别是瘘管发病率方面，具有重要作用。

=== Residence
在西非地区，residence的平均值为1.65，表明居住在农村的女性偏多。Cote d'lvoire的女性更多居住在城市。而其他国家的女性则主要居住在农村。

总体来看，西非地区城市女性的患病率略高于农村女性。然而，在Mali、Nigeria和SierraLeone，农村女性的患病率高于城市女性。而其他国家都是城市女性的患病率更高。其中，GuineaBissau不管是居住在城市还是农村的女性患病率都显著高于其他国家的水平。

MCA分析显示，residence在西非和各国中都对fistula有重要贡献。双变量分析表明，在Cote d'Ivoire，GuineaBissau，和Nigeria，religion是显著影响因素。进一步的svyglm分析则揭示，在Cote d'Ivoire，Nigeria和Togo，residence对患病率有显著影响。

综上所述，residence对西非地区瘘管患病率的影响具有重要作用，但存在地域差异。在科特迪瓦、尼日利亚和多哥，居住地差异显著影响患病率。

=== Postpartum_care
在西非地区，residence的平均值为2.48，表明大多数女性偶尔接受产后护理。具体到各国家，Mali和Nigeria的女性更倾向于从未接受过产后护理。而其他国家的女性则主要偶尔接受护理。

总体来看，在西非一直接受产后护理的女性患病率远高于其他人群。在尼日利亚和多哥，从未接受过产后护理的女性患病率高于那些一直接受护理的女性，而在其他国家则相反。尤其是GuineaBissau接受产后护理的患病率异常显著。

在MCA分析中，产后护理在西非整体及各国家中并未显示出显著贡献。然而，双变量分析表明，在西非、几内亚比绍和塞拉利昂，产后护理是显著影响变量。进一步的svyglm分析则揭示，产后护理在西非、几内亚比绍、尼日利亚、塞拉利昂和多哥中都是显著的影响因素。

综上所述，产后护理在西非地区瘘管患病率中的影响表现出一定的复杂性。尽管在MCA分析中未显示出显著贡献，但在更深入的双变量和svyglm分析中，产后护理在西非和多个国家中成为显著的影响因素，可能反映了上游因素的交互作用。值得注意的是，接受产后护理的女性患病率较高可能与因患病而更频繁接受护理的情况有关。

=== Place of Delivery
在西非地区，place of delivery的平均值约为2.2，表明大多数女性偶尔在医疗设施中分娩。科特迪瓦和塞拉利昂的女性更倾向于在医疗设施中生产，而多哥的女性则更多在非医疗设施中分娩。尼日利亚，马里和几内亚比绍的女性在医疗设施中分娩的频率介于两者之间。

总结来看，西非在医疗设施生产的患病率高于其他地点。而各国的瘘管患病率在不同的生产地点显示出不同的趋势。几内亚比绍在所有情况下的患病率都异常高，而马里和尼日利亚则随着医疗设施使用频率增加，患病率逐渐下降。塞拉利昂和多哥的情况较为复杂，患病率在不同生产地点间有所波动。

在MCA分析中，place of delivery对塞拉利昂中的贡献不显著，但在西非和其他国家显示出较大贡献。双变量分析表明，生产地点在西非、几内亚比绍和马里是显著的影响变量。进一步的svyglm分析揭示，生产地点在西非和所有国家都是显著的影响因素。

总体而言，生产地点对fistula患病率有显著影响，但不是唯一的决定性因素。尽管在医疗设施中生产通常被认为能减少并发症，但在西非，医疗设施分娩的fistula患病率反而高于其他地点。这可能与医疗资源的分布不均、设施的过度拥挤、或产后护理不足等因素有关。
=== Distance
在西非地区，distance的平均值约为2.2，表明大多数女性偶尔在医疗设施中分娩。科特迪瓦和塞拉利昂的女性更倾向于在医疗设施中生产，而多哥的女性则更多在非医疗设施中分娩。尼日利亚，马里和几内亚比绍的女性在医疗设施中分娩的频率介于两者之间。

=== Professional Delivery


=== Contraception Use


=== Age of First Sexual Intercourse


=== Total Births


== Interaction Effects


== Comparative Analysis Across Countries 





In this research of fistula in women of childbearing age in West Africa, the key influencing factors that need to be retained are finally determined through comprehensive analysis of three methods: GLM, decision tree (DT) and random forest (RF). The results are shown in @WestAfrica.
#figure(
  caption: "West Africa",
  table(
    columns: (auto, auto, auto, auto, auto),
    align: center,
    stroke: none,
    table.hline(),
    table.header([*Factor*], [*GLM*], [*DT Hierarchy*], [*Importance Score*], [*RF Ranking*]),
    table.hline(),
    [postpartum_care],
    [< 2e-16],
    [Root Node],
    [19.040851],
    [1],
    [religion],
    [0.001744],
    [],
    [11.666741],
    [2],
    [distance],
    [0.004044],
    [],
    [8.291541],
    [3],
    [occupation],
    [0.011409],
    [1],
    [7.365686],
    [4],
    [delivery_place],
    [0.000384],
    [],
    [7.147984],
    [5],
    [contraception_use],
    [1.35E-08],
    [1],
    [6.890601],
    [6],
    [education],
    [1.25E-06],
    [],
    [6.790721],
    [7],
    [number_birth],
    [0.004799],
    [],
    [6.6463],
    [8],
    [delivery_professional],
    [0.070237],
    [3],
    [6.046161],
    [9],
    [residence],
    [0.925347],
    [],
    [6.016956],
    [10],
    [wealth],
    [0.009114],
    [2],
    [5.532882],
    [11],
    [age],
    [0.053819],
    [],
    [5.511915],
    [12],
    [age_sex],
    [0.294214],
    [],
    [5.228768],
    [13],   
    table.hline(),
  ),
) <WestAfrica>

Specifically, the three variables residence, age and age_sex are not remained in the final analysis. The reasons are as follows:

Residence: In the GLM model, the p-value of residence is 0.925347, which is much higher than 0.05, indicating that it is not significant when analyzed independently. In addition, in the decision tree model, residence is not in the first few layers, which indicates that it does not contribute enough to the classification in the decision tree model. In the random forest analysis, the importance score of residence is 6.016956, ranking 10. Combined with the results of the other two models, the impact of residence on fistula is not strong enough, so after comprehensive consideration, it is decided not to retain it as a key influencing factor.

Age: The p-value of age in GLM is 0.053819, which is close to the significance level of 0.05, but does not meet the strict significance requirement. In the random forest analysis, the importance score of age is 5.511915, ranking 12, indicating that its influence is relatively weak. Although age is a recognized potential influencing factor, it does not show a strong influence in this study. Therefore, in order to ensure the reliability of the model, it is decided to discard the age variable.

Age_Sex: The p-value of the variable of age at first sexual intercourse in GLM is 0.294214, indicating that its independent contribution is not significant. It also does not show high importance in decision trees and random forests. Specifically, it ranks 13 in the random forest analysis, further illustrating its secondary importance in the overall analysis. Therefore, this variable is excluded from the final model.

Therefore, there are 10 important factors affecting fistula in West Africa, including postpartum care, religion, distance, occupation, delivery place, contraception use, education, the number of birth, delivery professional, and wealth.

Through comparative analysis, several factors that play a significant role in influencing fistula can be found:

Postpartum Care: Postpartum care shows a highly significant effect in all three analysis methods. In GLM, its p-value is much less than 0.05, showing extremely high statistical significance. In the decision tree, postpartum care is the root node, indicating its importance in classifying fistula risk. In addition, in the variable importance score of random forest, postpartum care scores the highest, further establishing its position as a major influencing factor.


= Discussion

= Conclusion

#bibliography("fistula1.bib")