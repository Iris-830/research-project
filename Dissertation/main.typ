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

== Research Objectives
The specific research objectives are as follows:

1. Identify regional gaps in the determinants of fistula in West Africa. Understand
  the special circumstances of fistula in various areas through analyzing the
  prevalence in West Africa and each country, as well as the prevalence under
  different factors. Analyze the similarities and differences in influencing
  factors among countries.

2. Investigate the economic and social, personal background, health care
  utilization, family planning, and sexual health aspects related to fistula in
  women of reproductive age in West Africa. Using quantitative analysis methods,
  determine how related factors affect the prevalence of fistula in different West
  African countries. And explore how economic status, education, and occupation interact with other factors to influence fistula prevalence.

3. Create a data dashboard to visualize the prevalence of fistula in West Africa,
  as well as the social determinants of women of childbearing age. The design of
  the dashboard can help users to have a better knowledge of the social
  determinants of fistula in women of reproductive age in West Africa, supporting
  the implementation of appropriate policies for different areas.

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

The Wealth Index is a composite measure that reflects the cumulative living standard of a household, calculated through data on asset ownership, housing characteristics, and access to services. It categorizes households into five wealth quintiles, allowing for the analysis of economic disparities and their impact on health outcomes. @dhs_program_wealth
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

Distance

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

== Research Gaps

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

   Survey-weighted Generalized Linear Models (svyglm) are used to identify the important determinants influencing fistula in West African women of reproductive age. The analysis steps are as follows: multicollinearity check, basic model fitting, final model selection, and interaction term analysis.

1. Multicollinearity Check

  The variance inflation factor (VIF) is calculated before constructing the weighted regression model to determine whether there is an issue with multicollinearity among the independent variables. First, the selected variables are subjected to regression analysis using the ordinary generalized linear model (GLM). Then the VIF is computed. If the VIF is larger than 5, it indicates a multicollinearity concern. The VIF test results for West Africa and other countries show that all variables' VIF values below 5. As a result, it is assumed that there is no significant multicollinearity problem. The multicollinearity problem will have no effect on the succeeding svyglm model's variable estimate.

2. Basic Model Fitting
  
  Use the weighted generalized linear model (svyglm) for analysis after checking that there is no multicollinearity issue. This is because the data set has a complex sampling design and the target variable is a binary variable (experienced_fistula). Svyglm is an extension of the generalized linear model (GLM) that considers complicated sampling designs. It can adjust the model estimation by considering sample weights, stratification by country, and clustering within the data to make the results more accurate and representative of the population. The significance of each variable is determined by its p-value, which helps to see if the observed relationships are statistically meaningful. Additionally, 95% confidence intervals are calculated for each coefficient to show a range that likely includes the true effect size, giving more insight into the accuracy and reliability of the estimates. The basic model formula is as follows:

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

  5. Model Fit: The Akaike Information Criterion (AIC) is used to evaluate and compare the fit between the original and final models. The lower the AIC value, the better the model fits. The final model's fit, which confirms the rationality of the validated significant variables, is indicated by a reduced AIC value. The results are shown in @AIC-Comparison.
#figure(
  caption: "Model Performance Comparison",
  table(
    columns: (auto, auto, auto),
    align: center,
    stroke: none,
    table.hline(),
    table.header([*Region*], [*AIC(original)*], [*AIC(current)*]),
    table.hline(),
    [West Afirca],
    [5022.23776],
    [5009.574994],
    [Cote d'Ivoire],
    [777.1836],
    [738.044482],
    [GuineaBissau],
    [2000.545597],
    [1975.36238],
    [Mali],
    [381.6466946],
    [363.6374215],
    [Nigeria],
    [381.83354],
    [373.2536296],
    [Sierra Leone],
    [930.523684],
    [927.050836],
    [Togo],
    [192.5654303],
    [182.5412551],  
    table.hline(),
  ),
) <AIC-Comparison>

3. Model Determination and Evaluation

  The final factors influencing fistula are determined by the variables that are significant in the 'svyglm' regression analysis. These significant variables are used to fit the final models for West Africa and each country, and the AIC is calculated to assess the model fit. The AIC of the final model is then compared to that of the base model. If the AIC of the final model is lower, it indicates a better fit than the base model, confirming the robustness of the final model.

4. Exploration of Upstream and Downstream Factor Interaction Terms

  Given the large number of variables, this research uses a stepwise addition approach to examine the interaction between upstream characteristics (wealth, education, occupation) and downstream factors.

  The process involves adding only one interaction term at a time to the final model. These interaction terms consist of upstream and downstream factors. For example, an interaction term like wealth*age_sex is added to the final model, and then the svyglm model is run to evaluate the significance of the interaction. In subsequent analyses, different downstream factors in the final model are tested by replacing age_sex with another variable, and the model is rerun to assess the significance of the new interaction term. If the interaction term is significant (p-value < 0.05) and results in a lower AIC value compared to the final model without the interaction term, this indicates a meaningful interaction between the upstream and downstream factors.

== Summary

In this research, the weighted generalized linear model (svyglm) is used primarily to identify major factors influencing fistula in West Africa and other countries. The svyglm model can effectively identify factors that are significantly correlated with the target variable. Additionally, it facilitates the investigation of interactions between upstream factors (wealth, education, and occupation) and downstream factors by gradually introducing interaction terms.

Although the svyglm model cannot automatically capture variable interactions, this research makes up for this limitation by gradually adding interaction terms, enabling a more comprehensive analysis of the complicated relationship between variables.

This research method can not only identify the impact of individual variables, but also deeply explore the joint effects of upstream and downstream factors through the analysis of interactions. Ultimately, this comprehensive methodology effectively identify the key factors that significantly influence the occurrence of fistula in West Africa and other countries.

= Data Visualization
(Dashboard)

= Results Analysis
== Descriptive Analysis
=== Overview of Fistula Prevalence
#figure(
  caption: "Overview of Fistula Prevalence",
  table(
    columns: (auto, auto),
    align: left,
    stroke: none,
    table.hline(),
    table.header([**Area**], [**Prevalence**]),
    table.hline(),
    [West Africa],[1.25%],
    [Cote d'lvoire],[1.18%],
    [Guinea-Bissau],[4.60%],
    [Mali],[0.46%],
    [Nigeria],[0.20%],
    [Sierra Leone],[1.44%],
    [Togo],[1.02%],
    table.hline(),
  ),
) <overview-prevalence>

The overall fistula prevalence in West Africa is 1.25%, indicating that fistula remains an important public health issue, with significant differences across countries. Specifically, Guinea-Bissau has the highest prevalence, reaching 4.60%. In contrast, Nigeria has the lowest prevalence, at only 0.20%. Mali follows with a prevalence of 0.46%. Togo (1.02%), Cote d'Ivoire (1.18%), and Sierra Leone (1.44%) have moderate prevalence rates but still warrant attention. Overall, these differences suggest that countries face varying challenges in addressing fistula prevalence.

=== Frequency and Prevalence Distributions
#figure(
  caption: "West Africa: Frequency Distribution and Prevalence",
  table(
    columns: (auto, auto, auto),
    align: left,
    stroke: none,
    table.hline(),
    table.header([**Variable**], [**Category**], [**Frequency (%) and Prevalence**]),
    table.hline(),
    [**Wealth**], [Poorest (1)], [10448.50 (26.47%) - 0.99%],
    [], [Poor (2)], [8773.27 (22.25%) - 1.19%],
    [], [Middle (3)], [7952.63 (20.16%) - 1.05%],
    [], [Richer (4)], [7341.33 (18.42%) - 1.69%],
    [], [Richest (5)], [6433.43 (16.23%) - 1.44%],
    table.hline(),
    [**Education**], [No Education (0)], [31192.33 (65.94%) - 1.47%],
    [], [Primary (1)], [10001.12 (21.16%) - 1.08%],
    [], [Secondary (2)], [5675.87 (12.00%) - 0.93%],
    [], [Higher (3)], [982.42 (2.08%) - 0.77%],
    table.hline(),
    [**Occupation**], [Not Working (0)], [11645.71 (24.60%) - 1.20%],
    [], [Working], [25284.87 (53.41%) - 1.35%],
    [], [Don't Know], [10357.72 (22.00%) - 1.05%],
    table.hline(),
    [**Age**], [15-19 Years], [3094.80 (7.86%) - 1.43%],
    [], [20-24 Years], [8301.82 (21.08%) - 1.23%],
    [], [25-29 Years], [10049.34 (25.51%) - 1.20%],
    [], [30-34 Years], [7941.18 (20.16%) - 1.17%],
    [], [35-39 Years], [6140.57 (15.59%) - 1.29%],
    [], [40-44 Years], [2814.62 (7.14%) - 1.26%],
    [], [45-49 Years], [1044.97 (2.65%) - 1.67%],
    table.hline(),
    [**Religion**], [Muslim], [28051.66 (71.22%) - 1.43%],
    [], [Christian], [10025.26 (25.45%) - 0.86%],
    [], [Animist], [697.30 (1.77%) - 0.31%],
    [], [No Religion], [574.72 (1.46%) - 0.57%],
    [], [Other Religions], [38.35 (0.10%) - 0.00%],
    table.hline(),
    [**Residence**], [Urban], [13723.77 (34.84%) - 1.42%],
    [], [Rural], [25663.53 (65.16%) - 1.20%],
    table.hline(),
    [**Delivery Place**], [Home (1)], [24592.33 (58.95%) - 1.32%],
    [], [Health Facility (2)], [17439.27 (41.05%) - 1.02%],
    table.hline(),
    [**Distance**], [Big Problem (1)], [20333.77 (51.87%) - 1.31%],
    [], [Not a Problem (2)], [18889.23 (48.13%) - 1.12%],
    table.hline(),
    [**Delivery Professional**], [Always Assisted (1)], [21188.77 (52.91%) - 1.18%],
    [], [Occasionally Assisted (2)], [6454.22 (16.13%) - 1.15%],
    [], [Never Assisted (3)], [12509.97 (31.26%) - 1.34%],
    table.hline(),
    [**Postpartum Care**], [Received Care (1)], [24650.45 (65.35%) - 1.21%],
    [], [No Care (2)], [11736.85 (30.65%) - 1.40%],
    table.hline(),
    [**Age at First Sexual Intercourse**], [8-19 Years], [34633.88 (87.93%) - 1.30%],
    [], [20-49 Years], [4139.14 (10.51%) - 0.76%],
    [], [At First Cohabitation], [614.28 (1.56%) - 1.57%],
    table.hline(),
    [**Number of Births**], [Three or Fewer Children], [21243.76 (53.94%) - 1.38%],
    [], [Four or More Children], [18143.54 (46.06%) - 1.10%],
    table.hline(),
    [**Contraception Use**], [No Use (0)], [38702.16 (84.00%) - 1.25%],
    [], [Traditional Methods (1)], [3033.91 (6.59%) - 1.07%],
    [], [Modern Methods (2)], [4351.23 (9.41%) - 1.38%],
    table.hline(),
  ),
) <distribution>

Wealth: In West Africa, the distribution of women across wealth categories is fairly even, though the poorest groups have a slightly larger share. The highest fistula prevalence is found among the wealthiest women (1.69%), while the poorest have the lowest prevalence (0.99%), suggesting a higher risk among wealthier women. When examining individual countries within West Africa, distinct trends emerge: fistula prevalence is higher among wealthier women in Cote d'Ivoire, Guinea, and Togo. In contrast, in Mali and Sierra Leone, poorer women are more affected. Nigeria shows the highest prevalence among women in the middle wealth category, though overall prevalence remains low. (Appendix for detailed country data)

Education: In West Africa, over half of the women are uneducated (65.94%), with the highest fistula prevalence among this group (1.47%), and showing a generally negative trend between education and fistula risk. This pattern is consistent in Nigeria, Sierra Leone, and Togo, where higher education is linked to lower prevalence. However, in Côte d'Ivoire, despite a majority being uneducated, higher education correlates with the highest prevalence (2.74%). In Guinea and Mali, while most women are uneducated and prevalence is high, those with secondary education have the highest prevalence, but the risk drops to the lowest among women with higher education. (Appendix for detailed country data)

Occupation: In West Africa, the majority of women are employed, comprising approximately 70.58% of the population. The prevalence of fistula among working women is 1.27%, which is lower than the 1.64% prevalence observed among non-working women. Across individual countries, most women are also employed. Specifically, in Sierra Leone and Togo, fistula prevalence is higher among working women, which could be attributed to the larger sample size of working women (80.18% in Sierra Leone and 85.75% in Togo). In contrast, in Cote d'Ivoire, Guinea-Bissau, Mali, and Nigeria, the prevalence of fistula is lower among working women compared to those who are not working. Nigeria stands out with an overall very low prevalence of fistula and no sample of non-working women. These patterns suggest that occupation may influence fistula prevalence, although the impact varies across different contexts in West Africa. (Appendix for detailed country data)

Age: In West Africa, young women aged 15-19 have a relatively high fistula prevalence of 1.43%, but they make up only 7.86% of the total population. As women move into the 20-34 age range, the prevalence decreases to its lowest (1.17% to 1.23%), with this age group comprising 66.75% of the population. However, as women age further, particularly in the 45-49 age group, the prevalence sharply rises to 1.67%, although this age group accounts for only 2.65% of the population. This trend suggests that while the risk of fistula may decrease during peak childbearing years, it appears to increase in later years. In the analysis by country, similar trends and significant differences emerge. In Guinea Bissau, Mali, Sierra Leone, and Togo, older women have higher prevalence rates, despite representing a smaller proportion of the population, indicating that health concerns among older women warrant more attention. Notably, in Cote d'Ivoire, women aged 25-29 have a significantly higher prevalence rate of 1.99% compared to other age groups. Conversely, in Nigeria, the prevalence is consistently low across all age groups, not exceeding 0.5%. Additionally, in most countries, except for Guinea Bissau, the prevalence among younger women is relatively low. (Appendix for detailed country data)

Residence: In West Africa, most women (65.16%) live in rural areas, with a fistula prevalence of 1.16%. In contrast, 34.84% of women reside in urban areas, where the prevalence is slightly higher at 1.42%. This suggests that although more women live in rural areas, those in urban areas may face a slightly higher risk of developing fistula. Similarly, in Cote d'Ivoire, the distribution between urban and rural areas is relatively even, but the prevalence of fistula is higher in urban areas (1.6%). Likewise, in Togo, although the majority of women live in rural areas (83.92%), the fistula prevalence is higher in urban regions (2.03%). On the other hand, in Guinea Bissau, Mali, Nigeria, and Sierra Leone, rural populations are larger. And in these countries, rural women show a higher fistula prevalence compared to their urban counterparts. Although the higher prevalence in rural areas might be influenced by the larger sample size, it also highlights the need for greater attention to fistula risk in rural areas. (Appendix for detailed country data)

Religion: In West Africa, Muslims make up the majority of the population (71.22%) and have the highest fistula prevalence at 1.43%. Christians represent 25.45% of the population, with a lower prevalence of 0.86%. The remaining groups, including Animists, those with no religion, and other religions, account for a very small portion of the population and show very low fistula prevalence. In Sierra Leone, Christians make up 21.25% of the population, while Muslims account for 78.73%. However, the highest fistula prevalence is found among Christians at 1.62%. In Togo, the religious landscape is more diverse. Christians are the largest group at 36.97%, with a fistula prevalence of 1.4%, the second highest. Animists, who comprise 34.85% of the population, have a very low prevalence at 0.43%. Those with no religious affiliation, making up 14.6% of the population, have the highest prevalence at 1.52%. The trends in other countries are similar to those observed across West Africa overall. In summary, while Muslims are the majority in West Africa and generally exhibit the highest fistula prevalence, there are significant exceptions. This suggests that the relationship between religion and fistula risk may vary significantly across different regions. (Appendix for detailed country data)

Postpartum_Care: In West Africa, the majority of women (74.23%) never received postpartum care, yet their fistula prevalence is relatively low at 0.80%. About a quarter of women (25.75%) consistently received postpartum care, but this group exhibits a significantly higher fistula prevalence of 2.54%. In specific countries, such as Nigeria, 84.59% of women never received postpartum care, and while their prevalence is higher than those who received care, it remains low at 0.22%. In Togo, 59.14% of women did not receive postpartum care, and their prevalence is higher at 1.08%. Other countries show patterns similar to the overall trend in West Africa. This highlights the complexity of the relationship between postpartum care and fistula prevalence, suggesting that other factors may be at play in determining the risk. (Appendix for detailed country data)

Delivery_place: In West Africa, most women (57.03%) always deliver in health facilities, and this group shows the highest fistula prevalence at 1.47%. A significant portion (37.04%) never delivers in health facilities and has a lower prevalence of 0.94%. A small percentage (5.92%) occasionally delivers in health facilities, with a prevalence of 1.07%. In Mali, Nigeria and Sierra Leone, women deliver in health facilities (65.92%, 36.18% and 62.88%, respectively) have the lowest prevalence rates (0.34%, 0.15% and 0.21%, respectively). The higher prevalence in health facilities could be linked to the complexity of cases referred to these settings. @tebeu_risk_2012 (Appendix for detailed country data)


Delivery_professional: In West Africa, the majority of women (84.32%) consistently receive professional assistance during childbirth, with a fistula prevalence of 1.36%. A smaller portion of women (15.66%) never receive professional assistance, and their fistula prevalence is lower, at 0.67%. The higher fistula incidence observed among women who receive professional care during childbirth may be attributed to the fact that these women are already at higher risk due to underlying complications. @filippi_effects_nodate In Mali, Nigeria, and Togo, 19.25%, 26.34%, and 20.91% of women, respectively, do not receive professional assistance during childbirth, and they exhibit higher fistula prevalence rates of 0.65%, 0.28%, and 1.21%. Other countries follow a similar trend to the overall pattern in West Africa. This suggests that the presence of professional care, while essential, often accompanies more complex or high-risk pregnancies. (Appendix for detailed country data)

Distance: In West Africa, 38.07% of women consider distance to a medical facility a significant issue, and this group has the highest fistula prevalence at 1.46%. In countries like Côte d'Ivoire, Sierra Leone, and Togo, the distribution of women who view distance as a problem versus those who do not is relatively balanced. Interestingly, in these countries, women who do not perceive distance as a major issue have higher fistula prevalence rates of 1.28%, 1.57%, and 1.71%, respectively. In Guinea Bissau, both the distribution and prevalence rates are more evenly spread. The trends in Mali, Nigeria, and across West Africa as a whole are similar to the overall pattern observed. This suggests that while distance is a recognized barrier, the perception of its impact on health outcomes, such as fistula prevalence, may vary significantly across different countries. (Appendix for detailed country data)

Age_sex: In West Africa, the majority of women (87.93%) report having their first sexual intercourse between the ages of 8-19, with a fistula prevalence of 1.30%. A small percentage (1.56%) experienced their first sexual intercourse at the time of first cohabitation, and this group has the highest prevalence at 1.57%. These data suggest that earlier sexual debut is associated with a higher prevalence of fistula, but the highest risk is among those who begin sexual activity at the time of cohabitation. In Mali, the prevalence of fistula is nearly the same regardless of the age of first intercourse (0.46%, 0.47%). Interestingly, in Togo, the lowest prevalence is observed among those whose first sexual intercourse occurred between ages 8-19. The trends in other countries are similar to the overall pattern in West Africa. This observation aligns with a study conducted in Sub-Saharan Africa, which found that early sexual debut significantly increases the risk of developing vaginal fistula symptoms. @maheu-giroux_risk_2016 This supports the notion that early initiation of sexual activity is a critical risk factor for fistula prevalence in the region. (Appendix for detailed country data)

Number_birth: In West Africa, the majority of women (53.94%) have three or fewer children, and this group has the highest prevalence of fistula at 1.38%. In Guinea-Bissau and Mali, the prevalence of fistula is nearly the same regardless of whether women have more or fewer children. However, the situation in Togo is different: 55.40% of women have four or more children, and this group has the highest fistula prevalence at 1.56%. The trends in other countries are similar to the overall pattern in West Africa. This suggests that while lower fertility rates are generally associated with higher fistula prevalence in West Africa, in some countries like Togo, higher fertility rates correspond to a greater risk. (Appendix for detailed country data)

Contraception_use: In West Africa, the majority of women (80.98%) do not use any form of contraception, and this group has a fistula prevalence of 1.27%. A smaller percentage (15.51%) use modern medical methods of contraception, which is associated with a lower prevalence of 0.74%. In Nigeria, 5.27% of women use other forms of contraception, with a prevalence rate of 1.32%, but these women have a prevalence of 0%. Both modern contraception users and non-users in Nigeria exhibit very low prevalence rates of 0.24% and 0.21%, respectively. In Togo, the majority of women (83.23%) do not use contraception, and this group has the highest prevalence at 1.16%. In other countries, the trends are similar to the overall pattern in West Africa, where the highest prevalence is found among those using other, presumably less effective, forms of contraception, while those using modern medical methods have the lowest prevalence. This suggests that the type of contraception used may be associated with the risk of developing fistula, with less effective or traditional methods potentially leading to higher risks.

=== MCA
The relationships between the relevant variables are examined using Multiple Correspondence Analysis (MCA). The findings are provided in terms of how different variables contribute to the MCA's primary dimensions.
#figure(
  image("var_contrib_dim1.svg", width: 80%),
  caption: [Variable Contributions to Dimension 1 (Dim-1)],
)

In the first dimension (Dim 1), the most significant contributing variables are residence, wealth, and delivery_place. This dimension prominently features upstream factors such as wealth and education, with both the wealthiest and poorest groups contributing significantly. Multiple levels of education also show notable contributions, indicating the broad impact of educational background. Downstream factors mainly encompass personal background aspects (residence) and access to medical services (delivery place, delivery professional).

This analysis highlights the complex interplay between socioeconomic status and access to healthcare, illustrating how both upstream and downstream factors influence fistula in West Africa.

#figure(
  image("var_contrib_dim2.svg", width: 80%),
  caption: [Variable Contributions to Dimension 2 (Dim-2)],
)

In the second dimension (Dim 2), the most significant contributing variables are number_birth and age. This dimension shows minor contributions from upstream factors such as occupation and education. Downstream factors primarily include personal background factor (age) and aspects related to family planning and sexual health (number_birth, age_sex). 

This analysis highlights the importance of downstream factors such as number of births and age on fistula in West Africa

== Bivariate Analysis
In the bivariate analysis across West Africa, age and residence are not significantly associated with the outcome (p>0.05 ). Wealth, education, occupation, religion, distance, delivery_place, delivery_professional, postpartum_care, age_sex, number_birth and contraception_use show significant associations, highlighting their potential impact. The importance of these variables varies across countries. (see Appendix for details) Given the possibility of confounding, non-significant variables are also remained for multivariate analysis as they may still be important in interpreting the results.

== Multivariate Analysis
#figure(
  caption: "West Africa: Regression Results",
  table(
    columns: (30%, auto, auto, auto, auto, auto),
    align: left,
    stroke: none,
    table.hline(),
    table.header([**Factor**], [**Intercept**], [**p-value**], [**CI: 2.5%**], [**CI: 97.5%**], [**Sig.**]),
    table.hline(),
    [age_sex2], [-0.49546], [0.014125], [-0.8911554], [-0.09976301], [\*],
    [age_sex3], [0.89625], [0.00449], [0.2780767], [1.51443206], [\*\*],
    [distance1], [0.31944], [0.004312], [0.1001024], [0.53878206], [\*\*],
    [number_birth1], [-0.27143], [0.012871], [-0.4853154], [-0.05755219], [\*],
    [religion2], [-0.42067], [0.021844], [-0.7802366], [-0.06111184], [\*],
    [religion3], [-1.79006], [0.013989], [-3.217665], [-0.3624595], [\*],
    [religion4], [-1.21644], [0.011397], [-2.1586797], [-0.27419727], [\*],
    [religion5], [-10.80461], [< 2e-16], [-11.4875737], [-10.12164603], [\*\*\*],
    [wealth2], [0.18812], [0.25666], [-0.1369319], [0.51316947], [ ],
    [wealth3], [0.09739], [0.57146], [-0.2399269], [0.43471148], [ ],
    [wealth4], [0.6331], [0.000199], [0.2996342], [0.96657001], [\*\*\*],
    [wealth5], [0.60692], [0.001736], [0.2271354], [0.98670762], [\*\*],
    [education1], [-0.46497], [0.00731], [-0.8047113], [-0.12523024], [\*\*],
    [education2], [-0.75965], [8.67E-06], [-1.0943468], [-0.42494963], [\*\*\*],
    [education3], [-0.89376], [0.020253], [-1.6482844], [-0.13923874], [\*],
    [occupation1], [-0.08495], [0.50963], [-0.3374407], [0.16754566], [ ],
    [occupation2], [-1.01591], [0.002794], [-1.6819106], [-0.34989941], [\*\*],
    [contraception_use2], [0.64497], [0.000669], [0.2734097], [1.01653609], [\*\*\*],
    [contraception_use3], [1.64405], [2.70E-11], [1.1605054], [2.12760273], [\*\*\*],
    [delivery_place2], [0.02667], [0.905512], [-0.4136858], [0.46702299], [],
    [delivery_place3], [0.43798], [0.000774], [0.182647], [0.69331302], [\*\*\*],
    [delivery_professional2], [-10.31191], [< 2e-16], [-11.9478008], [-8.6760137], [\*\*\*],
    [delivery_professional3], [-0.28544], [0.134665], [-0.6594178], [0.08853977], [ ],
    [postpartum_care2], [-11.42399], [< 2e-16], [-12.3330881], [-10.51488996], [\*\*\*],
    [postpartum_care3], [-1.1411], [< 2e-16], [-1.356798], [-0.92539472], [\*\*\*],
  table.hline(),
  )
) <west-africa>

According to the results from 'svyglm' (@west-africa), age_sex, distance, number_birth, religion, wealth, education, occupation, contraception_use, delivery_place, delivery_professional, and postpartum_care are significant (p-value < 0.05), indicating that these factors have an important impact on fistula.

#figure(
  caption: "Countries: Regression Results",
  table(
    columns: (30%, auto, auto, auto, auto, auto, auto),
    align: left,
    stroke: none,
    table.hline(),
    table.header([**Factor**], [**Cote d'Ivoire**], [**Guinea-Bissau**], [**Mali**], [**Nigeria**], [**Sierra Leone**], [**Togo**]),
    table.hline(),
    [age2], [ ], [ ], [ ], [ ], [ ], [< 2e-16],
    [age3], [0.0255], [ ], [ ], [ ], [ ], [< 2e-16],
    [age4], [ ], [ ], [ ], [ ], [ ], [< 2e-16],
    [age5], [ ], [ ], [ ], [ ], [ ], [< 2e-16],
    [age6], [ ], [ ], [ ], [< 2e-16], [ ], [< 2e-16],
    [age7], [< 2e-16], [ ], [ ], [< 2e-16], [0.046886], [< 2e-16],
    [age_sex2], [ ], [ ], [ ], [ ], [< 2e-16], [ ],
    [distance1], [ ], [0.04986], [ ], [ ], [ ], [0.0201],
    [number_birth1], [ ], [ ], [ ], [ ], [0.000264], [0.0492],
    [religion2], [ ], [ ], [< 2e-16], [ ], [0.044288], [ ],
    [religion3], [< 2e-16], [< 2e-16], [ ], [< 2e-16], [ ], [ ],
    [religion4], [< 2e-16], [< 2e-16], [ ], [ ], [< 2e-16], [ ],
    [religion5], [< 2e-16], [ ], [ ], [< 2e-16], [ ], [ ],
    [wealth2], [ ], [ ], [0.00933], [ ], [ ], [ ],
    [wealth3], [ ], [ ], [0.03844], [0.03682], [ ], [ ],
    [wealth4], [ ], [ ], [0.03663], [0.0149], [0.029268], [ ],
    [wealth5], [ ], [ ], [0.04353], [0.00661], [ ], [0.04],
    [education1], [ ], [ ], [ ], [0.02263], [ ], [ ],
    [education2], [ ], [ ], [0.00925], [ ], [ ], [< 2e-16],
    [education3], [ ], [ ], [0.00397], [ ], [ ], [< 2e-16],
    [occupation1], [ ], [ ], [ ], [ ], [0.01499], [ ],
    [occupation2], [< 2e-16], [ ], [ ], [ ], [ ], [5.1e-05],
    [contraception_use2], [ ], [ ], [ ], [ ], [0.000644], [ ],
    [contraception_use3], [ ], [0.00886], [0.01602], [< 2e-16], [< 2e-16], [< 2e-16],
    [delivery_place3], [ ], [0.0054], [0.03597], [ ], [0.000321], [ ],
    [delivery_professional2], [< 2e-16], [ ], [ ], [ ], [ ], [ ],
    [postpartum_care2], [< 2e-16], [ ], [ ], [ ], [ ], [ ],
    [postpartum_care3], [ ], [2.54e-07], [ ], [ ], [< 2e-16], [ ],
  table.hline(),
  )
) <country-table>

From the @country-table, it is evident that significant factors vary across different countries.

Cote d'Ivoire: In Cote d'Ivoire, the significant factors include age, religion, occupation, delivery_professional, and postpartum_care. Compared to West Africa as a whole, only occupation stands out as an upstream factor, while the downstream factors are more concentrated on personal background and healthcare services.

Guinea-Bissau: In Guinea-Bissau, the significant factors are distance, religion, contraception_use, delivery_place, and postpartum_care. Unlike West Africa overall, Guinea-Bissau has no significant upstream factors. The downstream factors are mainly related to personal background, sexual health, and healthcare services, indicating that these aspects have a stronger influence in this country.

Mali: In Mali, the significant factors include religion, wealth, occupation, contraception_use, and delivery_place. The upstream factors wealth and occupation highlight the influence of economic status and employment, while the downstream factors relate to personal background, sexual health, and healthcare services.

Nigeria: In Nigeria, age, religion, wealth, education, and contraception_use are significant. Compared to West Africa overall, Nigeria's significant upstream factors include wealth and education, while the downstream factors focus on personal background and sexual health. This suggests that education and economic status play a more prominent role in the risk of fistula in Nigeria.

Sierra Leone: In Sierra Leone, the significant factors include age, age_sex, number_birth, religion, wealth, occupation, contraception_use, delivery_place, and postpartum_care. Compared to other countries, Sierra Leone has the most significant factors, with wealth and occupation as upstream factors and personal background, sexual health, and healthcare services as downstream factors, reflecting a more complex set of influences on fistula risk.

Togo: In Togo, the significant factors are age, distance, number_birth, wealth, education, occupation, and contraception_use. Compared to other countries, Togo has a more complete set of upstream factors. The downstream factors encompass personal background, sexual health, and healthcare services, showing a broad range of influences on fistula risk.

Overall, the significant factors in West Africa cover a wide range of socio-economic, personal background, medical services, family planning, and sexual health influences, indicating their widespread impact across the region. However, at the country level, the distribution of significant factors between upstream and downstream varies. For instance, Cote d'Ivoire and Guinea-Bissau have significant factors more concentrated on downstream factors like healthcare and sexual health, while countries like Nigeria and Mali are more affected by upstream factors like economic status and education. Sierra Leone and Togo exhibit a broader range of significant factors, encompassing both upstream and downstream factors, indicating a more complex set of causes for fistula risk. Therefore, in developing preventive strategies, it is crucial to consider the specific significant factors in each country to create more targeted and effective interventions.

== Exploring Upstream and Downstream Interactions
Exploring upstream and downstream interactions across West Africa to gain a deeper understanding of factors influencing fistula. The larger sample size in the West African dataset provides a more reliable foundation for analysis. Downstream factors are identified from the significant variables in the model. The final model is then used to further analyze the significant interaction terms.
=== Wealth
The interaction between wealth and delivery_professional suggests that occasional assistance significantly reduces the risk of adverse outcomes such as fistula, especially for wealthier women. Statistics show that the coefficients for wealth groups 2, 3, and 5 are -11.01, -10.78, and -11.81, respectively, and the p-values are extremely low (all between 4.36E-15 and < 2e-16), indicating that this effect is highly significant. This means that although wealthier women may have more access to continuous care, they still benefit from any form of professional assistance. This suggests that it is critical to ensure that all women receive some professional care during childbirth, regardless of their wealth.

The interaction between wealth and first sexual intercourse during cohabitation also shows a significant protective effect against fistula, particularly for wealthier women (coefficient: -13.10371, p-value: < 2e-16). This suggests that wealth and the timing of sexual behavior together reduce the risk of adverse outcomes.

The interaction between wealth and religion shows Animists experience significant variations in fistula risk based on wealth levels. Specifically, Animists with pooer wealth face a substantially higher risk of fistula (coefficient = 13.85746, p < 2e-16), while those in higher wealth brackets show a significantly lower risk across multiple levels, like wealth4 (coefficient = -14.90821, p < 2e-16). This indicates that wealth serves as a crucial upstream factor that indirectly affects fistula risk by significantly altering risk levels for Animists. For other religious groups, the relationship is less pronounced, emphasizing the unique impact of wealth on fistula risk within the Animist community.

In conclusion, the impact of wealth on fistula prevalence in West Africa is complex. It is similar to findings in Ethiopia where the wealthiest women had a prevalence of 26.3% compared to 13.2% for the poorest. @andargie_determinants_2017 Wealth, as an upstream factor, can also indirectly influence fistula prevalence by affecting downstream factors like postpartum care. This underscores the importance of addressing both direct and indirect pathways through which socioeconomic status impacts health outcomes in the region.

=== Education
The interaction analysis reveals that education significantly moderates the risk of fistula associated with the timing of first sexual intercourse. Women who experienced their first sexual intercourse at the time of cohabitation, with either secondary education (coefficient = -12.45415, p < 2e-16) or higher education (coefficient = -11.42680, p < 2e-16), show a markedly lower risk of fistula compared to those without education. This indicates that education acts as a strong protective factor, effectively reducing the risks associated with sexual initiation at cohabitation. Notably, secondary education has a slightly stronger effect, suggesting that education at this level may be particularly influential in mitigating fistula risk. Overall, these findings highlight how education may reduce the risk of fistula by influencing the downstream factor of age_sex.

The interaction between education and delivery_place reveals that higher education significantly reduces fistula risk, particularly for women who occasionally deliver in health facilities (interaction coefficient = -12.2334, p < 2e-16). This suggests that higher education enhances women's ability to manage health risks even with variable access to delivery services. This indicates that how upstream factors like education can influence downstream outcomes such as fistula risk through their effects on healthcare utilization.

The interaction between distance and education shows that women with primary education who perceive distance as a significant problem have a significantly lower risk of fistula (coefficient = -0.9807, p = 0.0045). This suggests that upstream factors like education help mitigate the negative impact of downstream factors such as access to healthcare, reducing fistula risk. However, the protective effect of education diminishes at higher levels, as secondary and higher education do not significantly alter the risk associated with distance. These findings highlight how basic education can indirectly reduce fistula risk by enabling better navigation of healthcare challenges.

The interaction between religion and education shows that higher education levels significantly reduce the risk of fistula for most religious groups, particularly among Animist (coefficient = -11.4957, p < 2e-16) and No religion women (coefficient = -12.3696, p < 2e-16) with primary education. For these groups, the protective effect of education increases with higher levels of schooling. This highlights the protective role of education in mitigating the effects of certain religious affiliations on fistula risk.

The analysis of West Africa indicates that education significantly impacts the prevalence of fistula, a finding consistent with previous studies. For instance, research in Ethiopia revealed that uneducated women have the highest prevalence of obstetric fistula (19.4%). Additionally, women who delivered at home had the highest prevalence of fistula (20.5%) @andargie_determinants_2017 Similarly, a study across 14 African countries found that women with secondary and higher education levels have a 41% and 60% lower risk of developing obstetric fistula, respectively. Furthermore, this research finds that education influences fistula prevalence through its interaction with postpartum care is supported by the same study across 14 African countries, which highlights that educated women are more likely to utilize maternal health services, thereby reducing their risk of fistula. @alie_counting_2021 This shows that education has an impact not just on the prevalence of fistula, but also on health outcomes through interactions with downstream determinants.

=== Occupation
The interaction between occupation and postpartum care shows that working women who never received postpartum care have a significantly lower risk of fistula (coefficient = -0.8015, CI= -1.3121  -0.2909), since the main effect of being employed showing an increased risk (coefficient = 0.3318, CI= -0.0695, 0.7331). This suggests that upstream factors like occupation, when combined with downstream factors such as lack of postpartum care, influence fistula risk in unexpected ways. In contrast, occasional postpartum care has no significant impact on the risk for working women.

The interaction between occupation and contraceptive_use reveals that women in the "Don't know" employment category who use other contraceptive methods experience a significantly lower risk of fistula (coefficient = -13.7277, CI= -15.9423 -11.5131). This suggests that in this group, using non-modern methods is associated with a reduced risk, highlighting the complex relationship between upstream factors like occupation and downstream factors like contraceptive choices.

The interaction between religion and occupation shows that women who identify as Animist and are working have a significantly higher risk of fistula (coefficient = 12.06, p < 2e-16), as do those with no religion who are working (coefficient = 12.75, p < 2e-16). This suggests that upstream factors like occupation, combined with downstream cultural or religious practices, significantly increase health risks for these groups. These findings highlight the critical role of both cultural and socio-economic factors in influencing fistula prevalence.

These analyzes highlight interactions between occupation and downstream factors. The differences in the impact of different factors indicate that specific socioeconomic and cultural backgrounds, as well as medical services and other factors need to be comprehensively considered when formulating interventions for fistulas.

= Discussion
== Findings
=== Upstream Factors
The analysis shows that upstream factors (wealth, education, occupation) play a significant role in influencing fistula prevalence across West Africa. Wealth distribution presents a unique pattern where wealthier women generally experience a higher prevalence of fistula, despite the poorest groups having a slightly larger population share. Education is a critical factor, with uneducated women showing the highest prevalence overall, and a clear trend of lower fistula risk with higher education, though exceptions exist in some countries. In terms of occupation, non-working women face a higher prevalence of fistula compared to their employed counterparts across the region. These findings emphasize the direct influence of upstream socioeconomic factors on fistula risk, highlighting the importance of addressing wealth disparities, improving education access, and supporting women's employment as part of broader efforts to reduce fistula prevalence in West Africa.

=== Downstream Factors
While age and residence are recognized in the literature as influential factors, in West Africa overall, they do not significantly affect fistula prevalence. However, age shows important influence in certain countries like Nigeria, Sierra Leone, and Togo, where younger or older women are more at risk. Conversely, residence does not significantly impact fistula prevalence either in the region or in individual countries.

Postpartum care, place of delivery, distance to medical facilities, and professional delivery assistance are significant factors influencing fistula risk in West Africa. Interestingly, women who consistently receive postpartum care or deliver in health facilities tend to have higher prevalence rates, possibly due to underlying complications that require medical intervention.

In the domain of family planning and sexual health, contraception use, age of first sexual intercourse, and total births are significant factors. Women who use modern contraception methods show lower fistula prevalence, while those who begin sexual activity at younger ages or have more children face higher risks. These findings emphasize the critical role of sexual health education and access to family planning in reducing fistula prevalence across West Africa.

=== Interactions
Wealth significantly influences the risk of fistula through interactions with various factors. Wealthier women benefit from any professional care during childbirth, reducing their risk of fistula. Additionally, wealth combined with the timing of first sexual intercourse (during cohabitation) shows a strong protective effect, particularly for wealthier women. Wealth also interacts with religion, notably affecting Animists, where lower wealth levels increase the risk of fistula, while higher wealth levels reduce it.

Education plays a crucial role in moderating fistula risk. Women with secondary or higher education who experienced their first sexual intercourse during cohabitation have a markedly lower risk of fistula. Education also interacts with healthcare access: higher education reduces fistula risk even with variable access to health facilities. Basic education mitigates the negative impact of distance on healthcare access, while the protective effect of higher education diminishes in this context. In addition, the Tostan program in West Africa raised women's health risk awareness and effectively prevented fistula through community education. @noauthor_obstetric_2005 Overall, education influences fistula risk through its effects on sexual behavior and healthcare utilization.

The interaction between occupation and postpartum care shows that working women without postpartum care have a lower risk of fistula, contrary to the general increased risk associated with occupation. Additionally, women in the "Don't know" employment category who use non-modern contraceptive methods experience a lower risk of fistula. The interaction between occupation and religion reveals that working Animists and those with no religion face a higher risk of fistula, indicating that occupation and religion or sexual health factors jointly affect fistula.

=== Country Variations
The prevalence of fistula across West Africa reveals a significant variation, with overall rates ranging from 0.20% in Nigeria to 4.60% in Guinea-Bissau. This difference emphasizes significant regional differences in fistula risk. While West Africa as a whole shows a diverse set of influential factors, individual countries highlight different aspects of this complex issue.

In general, upstream factors (wealth, education, occupation) play crucial roles in influencing fistula risk across the region. However, the impact of these factors varies by country. For instance, Nigeria and Mali show an obvious  influence of economic status and education, whereas countries like Guinea-Bissau and Cote d'Ivoire emphasize the role of downstream factors such as healthcare access and personal background.

These findings indicate that while some factors have widespread significance across West Africa, specific interventions are necessary to address the specific influences of each country.

== Research Contributions
This research makes important contributions to the existing literature on fistula prevalence in West Africa. First, this research systematically explored upstream and downstream factors that affect fistula risk in the region, revealing in depth how socioeconomic levels and other variables work together to influence the occurrence of fistula. This research analyzes multiple dimensions, thereby providing a more comprehensive understanding of the determinants of fistula. In addition, it also deeply analyzed regional differences among West African countries, exploring not only the influencing factors throughout West Africa, but also identifying unique risk factors for each country, reflecting the breadth and meticulousness of the study.

Another notable contribution is the development of a data visualization dashboard that allows for more effective exploration of fistula prevalence in the West African region and across different countries. This makes the data more understandable, and researchers and policymakers can develop more effective fistula prevention policies through the exploration of the dashboard.

== Policy Suggestions
Although wealth is generally associated with better health care, this research found that women with higher wealth have a higher prevalence of fistula. This suggests that even women with better economic conditions may face potential medical risks. Policymakers should conduct in-depth research on the health behaviors of high-income women. In addition, the interaction between wealth and religion has an important impact on fistula risk, like Animists. Policies should combine religious beliefs and economic status to develop comprehensive intervention measures.

Education is closely associated with fistula risk, with the highest fistula prevalence in mostly uneducated women in West Africa. Policies should focus on and promote female education. At the same time, there was a significant interaction between education and age at sexual intercourse. This suggests that sexual health education can be strengthened in schools to improve women's awareness of fistula risks.

The higher prevalence of fistula among non-working women suggests that policies need to further encourage women to work. Policymakers can promote women's employment by providing more jobs.


== Limitations
Accuracy of Self-reported Data:
Using the question "Have ever experienced a problem of leakage of urine or stool from vagina" from the DHS data to infer the prevalence of fistula has limitations, as it is not based on medical diagnosis. This self-reporting approach may lead to an over- or underestimation of the actual prevalence of fistula, thereby affecting the accuracy of the results.

Data Missingness:
Due to some respondents skipping certain questions in the DHS questionnaire, a large number of samples had to be removed during the data preprocessing stage. This missing data may introduce potential bias, especially after the sample size is reduced, making the analysis results less representative of the general population.

Time Differences in Data Collection:
The dataset from Togo is from 2013, while the data from other countries is from 2018, 2019, and 2021. This time difference was not specifically considered in the analysis and may lead to a certain degree of bias, as social, economic, and healthcare conditions could have changed during these years. Therefore, the time difference may affect the accuracy of comparisons and introduce uncertainty to the results.

Data Imbalance:
The proportion of fistula cases in the dataset is extremely low, making the dataset highly imbalanced. Even though Survey-weighted Generalized Linear Models (svyglm) were used to account for the complex survey design, this imbalance may still result in the model being biased towards the majority class, affecting the robustness and interpretability of the results.

== Future Research Directions

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

Future research should prioritize not only the medical treatment of fistula patients but also consider the psychological and social dimensions, such as how stigma affects affected women. Previous studies have shown that stigma often exacerbates the emotional and mental health challenges faced by fistula patients. @changole_i_2017 Research can focus on identifying and eliminating the misconceptions that contribute to stigma, which is crucial for improving the quality of life for these women. @roush_social_2009 @bashah_consequences_2018 Additionally, how these women reintegrate into society should be a key area of study, as stigma and isolation often hinder their successful reintegration. @khisa_understanding_2017

Fistula prevention should also be a priority, especially in regions such as West Africa, where socioeconomic and healthcare settings vary widely across countries. @tebeu_risk_2012 In addition, West African countries urgently need to develop effective national fistula treatment and prevention measures. @noauthor_towards_2022 In developing such strategies, it is important to integrate these efforts with the Sustainable Development Goals, particularly improving maternal health and reducing health inequalities. @slinger_obgyn_2020

In addition, future research should also focus on solving the common data imbalance problem in fistula research. Since fistula cases account for a very small proportion of the data, research should explore more appropriate methods to handle imbalanced datasets to improve the performance of the model and the reliability of the results.

== Conclusions
This research offers important insights into the prevalence and determinants of fistula in women of reproductive age across West Africa, emphasizing the critical role of both upstream and downstream factors. The findings reveal that while wealthier women surprisingly face higher fistula risks, education remains a key protective factor, with uneducated women experiencing the highest prevalence of fistula. Furthermore, the research highlights significant national variations, stressing the need for targeted interventions in different regions.

A notable contribution of this research is the development of a data visualization dashboard, which allows for more effective exploration and understanding of fistula prevalence across the region. This tool enhances both research and policy-making by making the data more accessible and actionable.

Despite these contributions, the study has several limitations, including data imbalance and the reliance on self-reported data, which may affect the accuracy of the results. Additionally, the differences in data collection periods across countries, such as Togo's earlier dataset, may introduce some bias in comparisons.

Future research should address these limitations, focusing on stigma-related issues, the reintegration of fistula survivors into society, and the development of more robust methods to handle data imbalance. Moreover, it is crucial to prioritize prevention strategies that are tailored to the specific needs of each country, integrating these efforts with broader global initiatives to improve the health of women of reproductive age.

#bibliography("fistula1.bib")