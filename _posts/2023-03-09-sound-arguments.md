---
title: Sound Arguments
categories:
  - Philosophy and Software Engineering
feature_image: "https://picsum.photos/2560/600?image=308"
---

> The software engineer is condemned to be free; because once thrown into the world, they are responsible for everything they do. **- _Jean-Paul Sartre probably_**

How many times has this happened to you? Someone asks an innocuous question in a retro, on a PR or sometimes just plonked into slack, and it causes a flourish of opinions, even from those that don't normally have them.

Here's some food for thought (in no way will I be answering these questions...)

-   What level of HATEOAS should we be using?
-   Is our API truly RESTful?
-   What's the right level of commenting?
-   Is it more important for this method to be readable or efficient?
-   Should we use \<insert shiny new language/framework here\>?
-   Standard, airbnb or prettier?
-   Which is better: Kotlin, Java or Scala?
-   Are we doing DevOps? How would we know if we were?
-   Can we take someone seriously if they don't know bitwise operations?

I might be wrong here, but I would say there isn't a definitive answer to these questions and anyone who thinks they have one is probably delusional. There are as many approaches to software engineering as there are software engineers, and that is why a PR review can spark debates as trivial and important as anything uttered in the Acropolis. The simple fact is that there is no defined correct way to approach any technical challenge; we are in charge of our destiny. Software engineers are free to choose how to write software and live with the consequences, it's inescapable.

Many engineers are pedantic; they like to argue over minute details in a code review, and they either love or loathe anything you can think of. It’s impossible to get out of the debate and impossible not to debate code, but there are bad and good ways to go about doing it. We can learn from philosophers how to approach the marketplace of coding ideas - most philosophers are pedantic too. My degree was in philosophy which is probably why I found a home in engineering. The market for toga-wearing thinkers was surprisingly slim. To make some use of it, here is some practical guidance from the world of logic.

## Sounding logical

> “Contrariwise,” continued Tweedledee, “if it was so, it might be; and if it were so, it would be; but as it isn’t, it ain’t. That’s logic.” - **_Lewis Carroll, Through the Looking Glass_**

An argument isn't a shouting match, it's how you put a point across. You can make several arguments in a conversation or a debate. Arguments have a structure that is usually implicit until you break them down.

A sound argument (in propositional logic and with deductive reasoning) is an argument with true premises and a valid structure which allows you to make a valid inference from its premises. This is probably logical mumbo-jumbo to you, so here’s a classic example:

_All men are mortal._  
_Socrates is a man._  
_Therefore, Socrates is mortal._

For an argument to be sound, the premises have to be verifiable (i.e. we can check if they are true or false) and true, and the conclusion has to follow logically from the premises. One of the simplest structures for a valid argument is:

_P → Q_  
_P_  
_∴ Q_

There’s some formal notation in there, but to break it down, if _P is true, then Q is true,_ and we know that _P is true,_ so we can conclude that _Q is true_ by necessity. **P → Q** and **P** are premises, and **Q** is the conclusion. This form of argument can be called a _modus ponens_ and is one of the most basic forms of propositional argument with deductive reasoning. To make the example above into that form:

_If Socrates is a man, then he is mortal._
_Socrates is a man._
_Therefore, Socrates is mortal._

There are some basic structures to arguments, and you can break an argument down into compound statements with connectives which tell you how the information relates together (it's all very logical). You have the following connectives which may ring some bells:

|Connective  |Formal Name  | Symbol |
|--|--|--|
| Not | Negation | ¬ |
| And | Conjunction | & |
| Or | Disjunction | \| |
| If … Then | Conditional | → |
  
<br/>
Some more examples of these connectives with valid arguments:

|Example| Formal Notation |
|--|--|
| I was born in the UK, and my eyes are hazel. <br/> Therefore, my eyes are hazel. |P & Q <br/> ∴ Q |
| It's raining, or it's snowing.<br/>It's not snowing.<br/>Therefore, it's raining.|P \| Q <br/> ¬ Q <br/> ∴ P |
| If I am the axe murderer, then I can use an axe.<br/>I cannot use an axe.<br/>Therefore, I am not the axe murderer.| P → Q<br/>¬ Q<br/>∴ ¬ P |

<br/>
Please note I've massively simplified this; we've not even touched on first-order or higher-order logic because that would take way too long. There are other forms of reasoning beyond deduction (as Sherlock Holmes will tell you), but it's a good way to think about what people are saying and whether it makes sense. You can read more at your local library.

### Them's some pretty symbols, but what are you talking about?

In summary, a sound deductive argument:

-   Has true premises
-   Has a conclusion which follows from those premises (a valid structure)

You can often refactor what people say into these propositional logic statements to check if they're making sound arguments, so let's go through some examples.

#### Linting

Here's a normal conversation:

> Fellow coder: "Hey up me duck, this code is unreadable, can you do something about that?"<br/><br/>
> Coding chum: "Alreet fellow technologist, it passes the linter."<br/><br/>
> Fellow coder: "Ok, but it is still unreadable. I can't make heads or tails of it."<br/><br/>
> Coding chum: "We've configured the rules so that the linter checks for readability so I think it is readable."<br/><br/>
> Fellow coder: "That's all good, I must be incorrect. Thank you for your time."

The coding chum is arguing that their code is readable because it passes the linter. Ignoring how stupid you might think this argument is, we can break it down into a logical form.

| Argument | Formal Notation |
| -- | -- |
| (Implicit) If the code passes the linting check, then it is readable.<br/>The code passes the linting check<br/>Therefore, it is readable. | P → Q<br/>P<br/>∴ Q |

<br/>
As you can see, the argument is valid, but the premises are faulty. _Coding chum_ implicitly asserts the truth of the first premise to make their argument work. _Fellow coder_ made the mistake of accepting the first premise as true. Of course, the definition of 'readable code' is not that it passes a linting check. There is much more to readable code than that!

Use this technique to deconstruct someone's argument in your next normal conversation to wow your friends.

#### 500 Errors

Another normal conversation:

> Tech Lead: "Why do you think the database is dropping connections?"<br/><br/>
> Log-checking person: "I can see logs for 500 status errors with SQL errors and database timeouts, but I can also see successful responses returning the right data too, so it's happening intermittently but there's no other errors coming out, just database timeouts. I've tried it myself and got expected results and errors at different times."<br/><br/>
> Tech Lead: "OK, let's look at the database."<br/><br/>
> Log-checking person: "Ok, my illustrious leader."

So the log-checking person is arguing that the database is dropping connections - that's their conclusion. Let's break down the premises. Note that there is an implicit premise in their argument (often, people don't talk like formal logic machines).

| Argument | Formal Notation |
| -- | -- |
| (Implicit) If there are 500 status errors and database timeouts, **and** no other errors are coming from the application, **and** the application is sometimes successfully returning data, then there is a problem with database connections.<br>There are 500 status errors in the logs with SQL errors and hibernate timeouts.<br>No other errors are coming from the application.<br>The application is sometimes successfully returning data.<br>Therefore, there is a problem with database connections. | (P & ¬Q & R) → S<br>P<br>¬ Q<br>R<br>∴ S|

<br/>
You can see that the argument is in a valid format because if all the premises are true, then the conclusion follows from the premises. Now you can pick apart what they are saying and check for any errors in logic. They seem to be talking sense though, you better start looking at the database!

#### Penguins Can't Fly

Often the best way to learn is to see bad examples. There are _many_ ways you can make a bad argument but let's start with the obvious.

### False Premises

> All birds can fly.  
> Penguins are birds.  
> Therefore, penguins can fly.

A common way to fall foul is untrue premises, "All birds can fly" is false. Although the penguin argument is valid, it doesn’t work because it has a false premise. If you can question the truth of a premise, then the conclusion it is based on is also questionable.

#### What do I do?

The first thing to do is to check that what has been said is based on evidence that is verifiable and verified. For example:

-   what evidence are they using to come to their conclusion?
-   does that evidence stand up to scrutiny?
-   has the person assumed anything about how things work?
    -   do they know the content of a test and what it testing?
    -   do they know the way the application should work?
-   is the behaviour replicable?

Don’t assume things; gather as much information as possible, and ensure your monitoring, logging, and other information sources are as detailed and unmistakable as possible. Be wary of statements that cannot be verified or haven’t been. If you have reliable information, you can be more confident in your conclusions.

### But there's more...

That’s just the start of the story. You know there are two parts to a sound argument:

-   Has true premises
-   Has a conclusion which follows from those premises (a valid structure)

We've covered the easy one. There are so many ways an argument can be invalid, which I'll elaborate in the next blog...

---
Further Reading: 
Logic with Trees: Colin Howson
