---
title: "Arguments: Deduction"
categories:
  - Philosophy of Software Engineering
feature_text: |
  A good argument isn't the loudest and bad arguments can stop you delivering good software
excerpt: |
  How do you argue your point as a software engineer? I've seen a lot of bad arguments in my time as a software engineer and I think applying some formal logic to the situation will help clear it up. Starting with deduction, here's some bad bad logic.
feature_image: "https://picsum.photos/2560/600?image=1002"
---
> The software engineer is condemned to be free; because once thrown into the world, they are responsible for everything they do. - Sartre probably

How many times has this happened to you? Someone asks an innocuous question in a retro, on a PR or sometimes just plonked into slack and it causes a flourish of opinions, even from those that don't normally have them. Here's some food for thought (I in no way will be answering these questions...)
- What level of HATEOAS should we be using?
- Is our API truly RESTful?
- What's the right level of commenting?
- Is it more important for this method to be readable or efficient?
- Should we use <insert shiny new language/framework here>?
- Standard, airbnb or prettier?
- Which is better: Kotlin, Java or Scala?
- Are we doing DevOps? How would we know if we were?
- Can we take someone seriously if they don't know bitwise operations?


I might be wrong here, but I would say there isn't a definitive answer to these questions and anyone who thinks they have one is probably delusional. There are as many approaches to software engineering as there are software engineers and that is why a PR review can spark debates as trivial and important as anything that was uttered in the acropolis. The simple fact is that there is no defined correct way to approach any technical challenge, we are in charge of our own destinies when it comes to producing software. Software engineers are free to choose how to write software, it's inescapable.

Whether you know it or not, by discussing the approach to writing code you are engaging in philosophy. In the broadest terms, philosophy is thinking too much about something. Raymond Aron once startled Sartre by pointing to a drink and declaring, “You can make philosophy out of this cocktail,” by which he meant philosophy is an activity you can aim towards anything. You can ask what something is, you can ask why it is how it is, you can describe how it interacts with other things, you can try to describe what makes it that thing and not some other thing, you can attempt to define what makes something good or bad, beautiful or ugly.

If you really think about it, a lot of engineers are pedantic, they like to argue over minute details in a code review, they have a favourite formatter, they either love or loathe boiler-plate and code generation. It’s impossible to get out of the debate and impossible not to argue about code but there’s definitely bad and good ways to go about doing it. We can learn from the philosophers on how to approach the marketplace of coding ideas.

## A good argument
>“Contrariwise,” continued Tweedledee, “if it was so, it might be; and if it were so, it would be; but as it isn’t, it ain’t. That’s logic.” - *Lewis Carroll, Through the Looking Glass*

A good argument is not something that just happens. An argument is what you use to put your point across. You can make several arguments in a conversation or a debate and others will do the same. Arguments have a structure that is usually implicit until you break it down. There’s deductive and inductive reasoning, valid and invalid inference. On the contrary, there’s logical leaps and missteps, even in the most rational amongst us. It’s worth reflecting on what a good argument is before going into the pitfalls of a bad one.

### Deduction
A sound argument (assuming propositional logic and deductive reasoning) is an argument with true premises and a valid structure which allows you to make a valid inference from those premises. This is probably logical mumbo-jumbo to you so here’s the classic example:
> All men are mortal.<br>
> Socrates is a man.<br>
> Therefore, Socrates is mortal.

This is actually an example that contains the universal quantifier, taking us into the realms of first-order logic which makes things more complicated so let's simplify things. For an argument to be sound, the premises have to be verifiable (i.e. we can check if they are true or false) and true and the conclusion has to follow logically from the premises. The simplest structure for a valid argument is:
> P → Q<br>
> P<br>
> ∴ Q

There’s some formal notation in there but basically, if *P is true then Q is true* and we know that *P is true* we can conclude that *Q is true* too by necessity. **P → Q** and **P** are premises and **Q** is the conclusion. This form of argument can be called a modus ponens and is one of the most basic forms of propositional argument. To make the above argument into that form it’s:
>If Socrates is a man, then he is mortal.
>Socrates is a man.
>Therefore, Socrates is mortal.

There’s actually a few basic structures to arguments where you can break an argument down into a few compound statements with connectives which give you a good idea how the information relates together. You have the following (which as a engineer you might feel familiar with):

| Connective | Formal Name | Symbol |
| ---------- | ----------- | ------ |
| Not        | Negation    | ¬      |
| And        | Conjunction | &      |
| Or         | Disjunction | &#124; |
| If … Then  | Conditional | →      |

<br>Some more examples of these connectives:

| Example                                                                                                           | Formal                   |
| ----------------------------------------------------------------------------------------------------------------- | ------------------------ |
| I was born in the UK and my eyes are hazel.<br>Therefore, my eyes are hazel.                                      | P & Q<br>∴ Q             |
|                                                                                                                   |                          |
| It's raining or it's snowing.<br>It's not snowing.<br>Therefore, it's raining.                                    | P &#124; Q<br>¬ Q<br>∴ P |
|                                                                                                                   |                          |
| If I am the axe murderer, then I can use an axe.<br>I cannot use an axe.<br>Therefore, I am not the axe murderer. | P → Q<br>¬ Q<br>∴ ¬ P    |

<br>There’s a whole world of logic to be found out there. If you’ve ever written a condition in any coding language you’ll know you can break it down into smaller sub-conditions that make up that compound condition. Good form in code is to make these as readable as possible so why not apply the same standards to our arguments!

## Bad Arguments
### False Premises
>All birds can fly.<br>
>Penguins are birds.<br>
>Therefore, penguins can fly.

A very common way to fall foul here is untrue premises. An easy thing to do is check that what has been said is based on evidence that is verifiable and is verified. For example, has the person assumed anything about how an API works, the content of a test or the way the code should work? They have decided there is a bug, what are they basing that on? If they’ve got some documented evidence, does it stand up to scrutiny? Although the argument above is a valid format, it doesn’t work because not all birds can fly. If you can question a premise, then the conclusion it is based on is also questionable.

The obvious advice is applicable here. Don’t assume things, gather as much information as possible, ensure your monitoring, logging and other information sources are as detailed and unmistakable as possible. Be wary of statements that cannot be verified or haven’t been. If you have reliable information you can be more confident in your conclusions. However, that’s just the start of the story, it’s harder to check for the validity of the inference so let's go into more detail there.

### Jumping to a conclusion
>If Socrates were a man, then he would be mortal.<br>
>Socrates is mortal.<br>
>Therefore, Socrates is a man.

The problem here is that the conclusion does not follow from the arguments. From premise 1, you know if Socrates were a man then he would be mortal, from premise 2 you know that Socrates is a mortal, however you don’t know enough information to determine that Socrates is a man from those two pieces of information. Socrates could be a woman, non-binary or could even be a non-human animal for all we know. This particular mistake has got a name called affirming the consequent. You can see the form here and how it differs from the good form above.

>P → Q<br>
>Q<br>
>∴P

It’s basically jumping to a conclusion and is quite a common error in logic. You should be able to spot someone doing this, if they work backwards trying to find the root cause of an issue then they might jump from the evidence they can see back to a root cause. For example, the service is returning a lot of 500 errors, the last time this happened there was a problem with the database configuration, therefore there’s a problem with the database configuration. Here we’ve got the argument:
>If there’s a problem with the database configuration, then it will return 500 errors.<br>
>The service is returning 500 errors.<br>
>Therefore, there’s a problem with the database configuration.

It doesn’t follow, we need more information to make that leap of logic. We’ve got to the conclusion by working backwards, but just because one thing leads to another it doesn’t mean the reverse is true. That’s why this is sometimes called the converse error or fallacy of the converse.

### Getting your booleans mixed up
These arguments get more complicated when you start to include negations. In the examples above, the arguments are valid when your Ps or Qs are true. As with the best applications, sometimes you can put a **!** in the wrong place and screw up the whole thing. For example:


| Example | Formal |
| ------- | ------ |
| If you are a software engineer, then you have a job.<br>You are not a software engineer.<br>Therefore, you don’t have a job. | P → Q<br>¬ P<br>∴ ¬ Q |

<br>Can you see the problem here? You’ve used one negation to prove another but they don’t follow from each other. You can have a job and not be a software engineer, you cannot conclude the person doesn’t have a job based on the information in the argument. There’s a very similar form of argument that is valid called a modus tollens:

| Example | Formal |
| ------- | ------ |
| If you are a software engineer, then you have a job.<br>You don't have a job.<br>Therefore, you're not a software engineer. | P → Q<br>¬ Q<br>∴ ¬ P |

<br>Note the assumption here is that software engineer is a job, I know you can do software engineering without being paid for it - just go with it. The second argument is formally valid but the first is not. Instead of making a valid inference in the first, you’ve done something called denying the antecedent. This example is quite obvious but this form of illogic can show up in a less obvious way. The thing to look out for is if you assume something isn’t true based on something else not being true then you should check that assumption.

>If the logs are saying there’s a problem with the thread pool, then there’s a problem in the thread pool.<br>
>The logs aren’t saying there’s a problem with the thread pool.<br>
>Therefore, there isn’t a problem in the thread pool.

The problem here is much subtler. Although the first premise is true, and you aren’t seeing those logs, it isn’t the only way you would be able to detect a problem in the thread pool, so you cannot conclude there isn’t a problem on that information alone. The problem could be preventing the logs from being seen, there could be a problem that wouldn’t log. It might look logical but it’s not quite right.

### Fallacy fallacy
Be careful, just because somebody commits an error in logic doesn’t mean their conclusion is false.
>If we developed feature X, then our customers would be happy.<br>
>We haven’t developed feature X.<br>
>Therefore, our customers aren’t happy.

Unfortunately, if you pointed out that this person has denied their antecedent it doesn’t mean your customers are in fact happy. The conclusion, although arrived at with an error in logic, could actually be quite true.

## Debugging Arguments
There’s a plethora of errors to make, let’s go through some other common fallacies you could come across that are less formal. These are usually used as tactics (deliberately or unconsciously) that people can use to convince others when their arguments are bad!

### Authority
If someone argues a point and to justify it they use their title, status or perceived respect on the team then they may be making a fallacy called an appeal to authority. Similarly if someone believes something because someone more experienced said it (without verifying it) then they might be falling into the same trap. Everyone is fallible, thinking you’re right doesn’t make you right and using your authority or the authority of someone else doesn’t make you right either.
>There aren’t any bugs in the logging functions because it was written by a senior developer who’s been on the team for a long time.

>We need to change the application to be more RESTful because Jenny said so

One tactic to deal with this happening is to ask questions for the person to clarify why they have come to that conclusion in the hopes that in having to explain themselves that they’ll have to admit they have made assumptions. If they don’t have a good reason to believe something other than ‘well X said it and he’s a TA’ then you can ask how that person came to know it. If you get to a point where a premise is ‘person X said so’ then you are in the realms of the argument from authority. You can ask ‘why did Jenny say so? Why does it need to do that?’

### Regression
In this case we’re not talking about testing. If you assume something you did fixed a problem without knowing how then you might be falling foul of the regression fallacy. Imagine seeing a spike in CPU in your live application, you look at logs and see something being logged around an import that’s running. You see an inefficiency around that code and then release a new version to fix the issue. You wait and you don’t see that issue for a while. You conclude that you must have fixed the issue.

The problem here is that you don’t know that. You’ve used the actions you did while an abnormal event was happening to explain why it returned to normal. I made it sound almost believable but those actions could have nothing to do with the change in CPU. Maybe, when you released the hotfix it restarted the application which released some resources and allowed the application to recover. Without hard evidence that the thing you have done has fixed the problem, you can’t be sure that it has. Think about this as an alternative. 
>The application is showing spikes in CPU, as we were looking at it we ordered a sandwich, when the sandwich arrived the CPU spikes went away, therefore ordering sandwiches fixes CPU spikes. 

We just can’t make that conclusion because we’re not sure what we did during that time fixed the issue. It’s obvious when the thing we did was so unrelated to where the problem might be, but I’ve seen many cases of people fixing unrelated bugs when looking at a production issue and then assuming the problem is fixed.

### False dilemmas
Sometimes there are either-or situations but sometimes that’s oversimplifying things. For example, you either love Java or you hate Java. This doesn’t take account of the people that might be indifferent to Java. There are more pernicious examples that can come up.
>The application is queuing. There must be a problem with either the threads in the application or the database.

>There’s a bug in the logic for working out prices, it’s either been introduced recently by a software change or has always been there.

The problem with these arguments is that they’re presenting the premises as having a false dilemma. If you accept these premises then the implicit premise is that we need to prove one or the other things to be false and then the conclusion is the only option left. So if we looked into database locks and found none, given the setup above we’d have to conclude that the problem is in the application threads. However, we were set up with a bad argument here, there could be a networking problem or long-running functions that have been introduced to explain the queueing.

Same for the bug situation, bugs don’t always come from recent software changes, you could unearth a bug by changing the way you use the code or changing the configuration of the application. Be careful of a false dilemma, it presents an either/or situation which simplifies things and hides other avenues of investigation.

## Conclusions
There's a lot that can go wrong when you're arguing. 
