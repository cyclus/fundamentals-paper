
# Detailed Responses to Review Comments

The comments by each reviewer follow. A bullet point following each comment 
summarizes the changes we have made to the paper. We appreciate all of the 
suggestions made by the reviewers and dispute none of them. 

## Reviewer 1

Line 15: You indicate "current tools are typically privately distributed" - 
such as? Reviewer can think of ORION and possibly COSI - are there others? 
(Indicate examples if possible)

- We replaced 'current tools are typically privately distributed having been 
  developed in industrial contexts' with 'current tools are typically 
  distributed under restrictive rather than open source licenses, having been 
  developed in industrial contexts or using commercial software platforms.'

Line 17: "inflexible architectures" - authors  explain this a little more later 
in the paper, but consider expanding your meaning briefly here.

- On line 17, we replaced 'inflexible architectures' with 'inflexible 
  architectures, never having been designed to enable new features or 
  extensions.'

Line 67: toxicity is best described as radiotoxicity; mined uranium is mined 
uranium requirements. Meanwhile it's probably useful to express these in terms 
of per unit energy.

- On line 67, we changed to radiotoxicity and mined uranium requirements. 
  Explanation of the energy normalization is covered by discussion of the 
  derived metrics are discussed later in the paragraph.

Line 102: "nuclear technologies" - probably better described as nuclear 
technologies and facility types.

- On line 102, we added 'and facility types.'

Line 160: What platform does CAFCA rely upon? (Simulink? PowerSim? VISION for 
example relies on PowerSim; even when universities are able to get their hands 
on it, modification is indeed difficult because of the proprietary software 
requirement).

- On line 160, we added a note about what platform CAFCA relies on (VENSIM).

Line 161: I think it's important to note here in this context that Cyclus is 
based on C++, where development tools are freely available and an open, 
well-documented standard.

- On line 161 we added a comment indicating that cyclus is written in c++ and, 
  therefore, the availability of development tools and standards.

Line 227: What kind of nonproliferation applications is this 
significant to? What kinds of questions *can* Cyclus answer? This need 
not be terribly explicit, but I would suggest giving some further 
detail rather than alluding to it and then leaving it unspecified.

- On line 227 we added an example of a type of nonproliferation analysis that 
  is enabled by discrete material tracking. 

Line 270: "Resource computing infrastructures" - this term might 
warrant further definition. (I assume you mean systems like cloud 
computing and batch scheduling computing clusters.)

- We added examples of resource computing as a parenthetical. Indeed, we 
  did mean cloud and cluster computing 

Line 278: proof-of-principle

- We fixed proof of principle -> proof-of-principle.

Line 339: "is superior to the system dynamic approach." I feel like a 
claim is being made here about superiority without much substantiation 
or expression of what the merit criteria is. This paragraph could use 
some further unpacking.

- On line 339 we made a change to the superiority claim about ABM vs 
  system dynamics to more clearly explain that the superiority is simply 
  greater generality. ABM is a more general modeling framework. All system 
  dynamics problems can be modeled in an ABM  paradigm, but the reverse is not 
  true. See Macal et al. 

Line 353: "The API abstracts away unnecessary detail" => suggest 
phrasing as "abstracts away details unnecessary to the implementation 
of the archetype-specific behavior"

- We have now made this change exactly as suggested.

Figure 3 could be a bit bigger.

-  We have now made figure 3 the full width of the text column.

Line 379: Directed acyclic graph: I suspect most readers will not be 
familiar with graph theory. A brief explanation and unpacking of the 
relevant context would be useful here.

- We added a few sentences defining directed acyclic graphs in the context 
  of the DRE. 

Line 398: "However, some questions require resolution at the level of 
individual facilities and materials." Such as? No need to go into 
explicit detail here, but given that you're building a case for 
flexible scoping, it would be helpful to produce a few examples that 
help to make your case. (For example, detailed isotopic analysis for 
thermal recycle vs. recipes. Nonproliferation applications. Etc.)

- On line 398 we added an example of spent fuel cask transport optimization.

Line 649: "because the new version is almost always wrong." This 
wording seems dangerously unclear. I think the intent is to say that 
deviation from prior, blessed results is almost always wrong (unless 
the change is expected, obviously). What is "wrong" are departures in 
results from a baseline.

- On line 649 we deleted the unnecessary comment about regression tests.

Line 785: Define heavy metal (and its abbreviation) for non-nuclear 
engineers.

- On line 785 we added a parenthetical explanation of heavy metals targeted at 
  non-nuclear engineers.

Line 798: Is uranium not also recovered in this simulation? (Is it 
directed into waste? It may be helpful to explicitly indicate this.)

- It is recovered along with the plutonium and fabricated into MOX. The metric 
  of interest, plutonium buildup, does not capture the uranium flows. This has 
  now been clarified in the text within the Spent Fuel Fabrication facility 
  description.

## Reviewer 2

(1) The article is not a manual. The manuscript provides unnecessary 
details which are not directly used in analysis at the end.

- We generally reduced the extent to which ancillary topics were discussed. 
  These include the Cyclus quality assurance process and the implementation 
  details of modular dynamic library loading. Such discussion was reduced
  significantly, resulting in a total length reduction of many paragraphs. 

(2) Comparison between the code and existing system dynamics codes is 
useful to understand why the author's  model is better and needed.

- A summary and references to three previous code-to-code validation efforts 
  have been added. Those previous verification studies, published elsewhere, 
  cannot be replicated here in their entirety. However, their citations will 
  lead the reader to the comparisons needed.  Cyclus performed well in these 
  verifications and demonstrated, in particular, the importance of discrete 
  facility and material tracking during transition analyses. The example chosen 
  for this paper seeks to demonstrate the ease of making significant changes to 
  a simulation in Cyclus. 

(3) Several figures have poor resolution.

- Figures 1 and 3 have been replaced with higher resolution images. The other 
  figures are scalable vector graphics which will now scale with the pdf in 
  production.

(4) The methodology part is long, but reviewer does not think it does not improve 
reproducibility of the authors' results. More figures or equations are needed.

- The methodology section was reduced as part of the response to comment 1 from 
  reviewer 2.  We have additionally added Figure 5 and accompanying 
  mathematical formulation (equations 1-4). These
  clarify the Dynamic Resource Exchange implementation key to the Agent Based 
  Model underlying Cyclus. If additional 
  clarifying images or equations are needed, we hope the reviewer will let us 
  know which particular parts of the discussion would benefit from such additions.

Section 1.2 Line 127 change facilitates to facilitate

- On line 127, we changed facilitates to facilitate.

Section 2.5.1 Line 616 Do the authors mean tool git or tool kit? In 
English English git is a pejorative term and will cause some amusement!

- On line 616, the authors did, indeed, mean "git". It (git) is a tool for 
  revision control. We rearranged the sentence so that the word git does not 
  appear near the word tool. This will avoid the concern that it might be a 
  typo meaning toolkit. English readers unaware of the git version control tool 
  will unavoidably continue to find this funny.  

Section 2.5.3 Line 670 correct spelling of automated

- Quite so. We have now changed automoated->automated on line 670.

Section 3.1.2 line 754 Should the table being referenced be Table 3 rather than 
Table 1?

- Indeed, we did mean figure 3, rather than figure 1. This has been fixed on 
  line 754.



