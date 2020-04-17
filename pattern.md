% Algorithmic Pattern
% Alex McLean

# Defining algorithmic pattern

This paper explores the world of algorithmic pattern, and the ways in which it offers an interface to the computer musician. To introduce this topic, let’s first look at the words _pattern_ and _algorithm_ separately, before putting them together.

\sloppypar

Patterns are present everywhere, certainly in textiles, choreography, mathematics, design and music. However, at first glance, the use of the word *pattern* in music seems comparatively impoverished, at least in the West. At the time of writing, the English language Wikipedia page on pattern has no mention of music, and when musicians talk about pattern, they usually mean any sequence that repeats. The word can even take on a pejorative sense in music, for example in a conference paper on transdisciplinary collaboration Hugill recounts how (and I paraphrase) mathematicians devote their careers to searching for patterns, whereas many composers will be seriously offended if you accuse them of making patterns.^[Hugill’s paper is unpublished but a video of its presentation is available at [medias.ircam.fr/x6e2d95](https://medias.ircam.fr/x6e2d95) with follow-on blog [andrewhugill.com/blog/?p=3159](http://www.andrewhugill.com/blog/?p=3159) (both accessed 30 Jan 2020).]

This paper compares patterns in music with those in textiles. The textile arts and crafts are alive with compositional patterning techniques, not only repetitions but reflections and symmetries, and generative structural compositions. Once you scratch the surface of music, it is of course also fully alive with patterns. As just one example, consider *canon* structures, where one voice imitates another, played over the top with a delay - an example of rotational or glide symmetry. So it seems that the difference here is the way words are used; in music, a canon _contains_ patterns, whereas in textiles, such a structure would _itself_ be referred to as the pattern.

So what _is_ a Pattern? @Greunbaum86 define patterns as "designs repeating some motif in a more or less systematic manner." They write in the context of geometric tilings, but the same definition largely holds in music fields; a sequence becomes a pattern, once it is repeated. However, in music we too often focus on the _repetition_, and not the _systematic manner_ in which it is repeated. For a pattern to be interesting, we need to do more than repeat it; the repetition only provides the metrical ground on which the pattern acts. Looking around the room you are in now, you will likely see patterns of repetition, but also of reflection, rotation, interference/moire, and glitches or deviations from those patterns. The textiles around (or on) you may well have a visual pattern arising not from the colour of threads alone, but from computational interference between colour and structure.

Accordingly, in the present paper, *pattern* is taken to refer to a whole family of techniques for working with regularities in the world. Such patterns allow us to perceive repetition, reflection and interference in a material. In other words, the way we perceive pattern is inextricably linked with the structured movements of its making. And, once we are dealing with ‘structured movements of making’, we are in the world of algorithms. 

An _algorithm_ is a step-by-step set of instructions. Sometimes it is assumed that by a step-by-step set, we mean a sequence of instructions, but this is not the case; indeed the notion of an algorithm has been formalised as lambda calculus, which may involve recursive steps _into_ a function declaration, rather than stepping _down_ a stateful sequence of statements. This clarification becomes important later in this paper, when we address TidalCycles, a live coding environment embedded in the Haskell language, which is itself based on lambda calculus.

There is some sense that as used in this paper the words _algorithm_ and _pattern_ are synonyms; they both refer to structured ways of making. Therefore the phrase “algorithmic pattern” seems to be a tautology. The phrase is nonetheless useful for on one hand clarifying that we address algorithms not just as software engineering tools, but as formalised ways of making that can to a large extent be perceived in end-results. It also clarifies that we are interested in patterns that are not just simple sequences, but structural qualities. This builds a perspective on pattern as a generative and perceptual connection between creation and reception. In short, I define algorithmic pattern as the perception of systematic activity.

## Patterns in NIME

From her perspective as a foundational algorithmic composer and technologist, @Spiegel81 argues (in a paper reaching its 40th anniversary) that patterns should be central to computer music interface design, a call relevant to the NIME (New Interfaces for Musical Expression) field. We will return to Spiegel's argument later, but as things stand, how do NIME authors use the word _pattern_? According to my use of the `pdfgrep` utility on a corpus of 1,739 NIME papers^[ Pdfgrep is available at [pdfgrep.org](https://pdfgrep.org/). It was used with `-i` and `-c` parameters, for case-insensitive matching. For example, the top twenty in terms of number of matches was found with the following: `pdfgrep -i -c pattern *pdf | sort -n -t: -k2 | tail -n20`], the word ‘pattern’ can be found in 803 papers (46% of the total) of which 315 (18% of the total) contain the word more than twice. I ranked these by incidence, and read the top twenty (which ranged from 26 to 150 occurrences per paper), to gain an impression of how the word is used in the NIME community. Of these twenty papers, I deemed only one [@cfaubel12014] explored pattern as an activity, in the context of patterns of interaction emerging and continually changing in motor feedback loops. Of the remaining papers, nine discussed transformation of patterns in some way [@Eigenfeldt2008; @Ogawa2009; @Jordnicode2252016; @Lee:2012a; @Kitani2010; @Toka2018; @Hawryshkewich2010; @rvogl2017], although all these referred to patterns as being the end result, rather than as a generation/transformation process or notation. The remaining eleven papers [@Schoonderwaldt2011; @Derbinsky2012; @slui2014; @Lee2006; @Trail:2012a; @Bouillot2007; @Kim2013; @Lee2007; @Petit2019; @Rauber-Du-Bois2019; @Subramanian2012] referred to patterns as fixed sequences. I identified only one explicit definition of pattern, where @Petit2019 writes "A pattern can be any part of a score, a MIDI sequence, or a pre-recorded sound" -- too broad a definition to be useful in the present context.

Wanting to find more examples of papers treating pattern as activity or behaviour rather than sequence, I searched again for the gerund _patterning_. This returned nine papers, none of which had more than two instances of the word. However several went beyond passing references: @ogreen2014 used patterning to refer to the combination of two patterns, @Suiter2010 described musical form as a process and patterns in terms of how they relate to one another, @Gimenes2007 quote Meyer in defining a composer's style as connecting patterns in human behaviour with patterns in results, and my own co-authored paper [@ncollins2014] described live coded algorithms as patterned behaviour. I count all of these examples as fitting the definition of *algorithmic pattern* presented in the present paper, as the perception of systematic activity.

## Algorithmic Pattern in Computer Music Interfaces

Algorithmic and generative music systems often come with high-minded claims of infinite variation or artificial intelligence. However on closer examination, these systems often rely upon surprisingly simple systems based on probability (e.g. Markov chains), arbitrary decisions (randomness/chance) and straightforward sequencing, referred to as ‘algorithmic’ simply because they are expressed as text rather than as a graphical piano roll. In her essay “Manipulations of Musical Patterns” mentioned earlier, @Spiegel81 looks beyond such methods, arguing convincingly for greater focus on pattern transformations in computer music interfaces, naming twelve categories of pattern transformation which, she argues, should be as central to computer music interfaces as copy and paste. Many computer music and live coding languages do indeed now feature such pattern languages, including SuperCollider, ixilang, FoxDot, Gibber and TidalCycles.

Our argument is not that algorithmic pattern is complex or difficult, but rather that complexity results from simple parts. In "Notes on Pattern Synthesis", @Fell18 reveals the Max patches behind his acclaimed album *Multistability*, which embrace simplicity in producing intensive pattern studies within self-enforced guidelines. This minimalist approach results in music with clarity, but which is nonetheless complex in structure. The usual minimalist examples, such as Reich’s clapping music fit here too, simple in its patterned construction, but bringing forth astonishing variety of detail in its outcome. This is a core benefit to using a pattern as an interface; embracing the simplest ingredients, but transforming them and composing them together to create complex results. Far from new, this approach grounds discussion of music generation in a rich perspective, able to draw from an expansive variety of cultural practices and artefacts from around the world and across history. 

When we write something as an algorithmic pattern, we work at least one step removed from the surface of a 'target domain' such as musical notes. By analogy, we don’t hit the drum, we write about hitting the drum. _Not even that_, we write about relationships between drum hits, the structures that lead to one movement following another. This is a trade-off, which creates distance between ourselves and an instrument, thereby losing direct tactile control, but which also brings us 'up' to work on a compositional, structural level. Here, we lose physical connection to a drum skin, but instead work in a way where a very small change can create far reaching, often unexpected changes in the music as it unfolds. This generative aspect of algorithmic pattern is what we explore below. Within the limits of this paper, we are unfortunately unable to explore this expansive world in-depth, which encompasses the history of all arts and crafts. Instead we will focus on two examples: first, live coded patterns in music, and then woven patterns in textiles.

# Algorithmic Pattern in TidalCycles

Work on TidalCycles (commonly *Tidal* for short) first began around 2009, and over the past decade has developed into a comprehensive, free/open source environment for algorithmic pattern, mainly in the context of live coding music. At heart, it is a domain specific language (DSL) and environment for patterning Open Sound Control network messages, embedded in the pure functional language Haskell. Tidal is usually used in tandem with SuperDirt, a hybrid framework for sample manipulation, synthesis and MIDI, implemented in SuperCollider. However, Tidal can be applied to any kind of pattern, and has indeed been used to pattern live choreographic scores [@Sicchio14], woven textiles [@McLean18b], DMX-controlled lighting, and VJing. Indeed, in sympathy with the present medium, all the below examples in this section use Tidal to create visual rather than musical pattern.

While Tidal has been developed alongside creative practice, it upholds strong computer scientific principles. Crucially, a pattern is defined as a pure function, and therefore may be composed with other patterns flexibly and safely.  As Tidal has developed, its core representation has grown more succinct, and a recent rewrite resulted in more rigorous understanding of what, as far as Tidal is concerned, a pattern *is*. 

## Tidal type structure

Tidal’s notion of pattern follows from its representation within Haskell’s type system, as a pure function of time. This follows work on pure functional reactive programming [@Elliott09], where rather than representing data using lists, behaviour is represented with functions. Accordingly, rather than representing a sequence as a list of events, Tidal represents it as a function taking a timespan as input, and then returning all the events that are active during that timespan. In this way, the idea of a pattern being about behaviour rather than sequence is embedded in Tidal’s core. 

Let's have a look at the type declarations themselves, describing each for those unfamiliar with the Haskell language.

```{.haskell}
data Arc = Arc {start :: Rational, stop :: Rational}
```

A timespan is expressed as an _arc_ of time, consisting of a start and end time. Timespans are referred to as arcs, in sympathy with Tidal's cyclic notion of time. Importantly, time is represented by a rational number, thereby allowing time to be arbitrarily subdivided, without any loss of accuracy (that the more common representations based on floating point numbers are known for).

```{.haskell}
data Event a = Event {
    whole :: Maybe Arc,
    part :: Arc,
    value :: a
}
```

An _event_ contains a value of some type `a`, and two arcs. The _part_ arc represents the timespan during which the event is active. An event may represent part of a larger _whole_ timespan, which is the second arc. If a whole is not set, this indicates that the event is _continuous_; that is, rather than having a discrete beginning and end, the value is able to change continuously. When querying a continuous value, the result is sampled from the midpoint of the query arc. This approach allows both discrete and continuously varying events to co-exist in the same pattern.

```{.haskell}
type Query a = (Arc -> [Event a])
data Pattern a = Pattern {query :: Query a,
                          controls :: StateMap
}
```

A _query_ represents the pattern’s behaviour, as a function from time arcs to events. In particular, a query takes an arc as input, and returns a set of events which are active during that arc as output. Event values in a given pattern must all be of the same type, and the 'part' arcs of the events will be constrained to the query arc. If an event 'whole' extends beyond the query, it is returned as-is, but its 'part' is curtailed. In other words, when a query returns a fragment of an event, the caller is also given the 'whole' arc of which the fragment is part.

## Tidal composition

The above definition of pattern does not say much about Tidal as an interface, but what follows from it is a rich approach to composition, supported by a large library of pattern combinators. _Composition_ is meant here in both a musical and computer scientific sense, in terms of composing together musical behaviours into new, generally more complex behaviours. Tidal supports a multitude of ways to combine patterns together, many based on Tidal's allowing patterns to be treated values; that is, any function that combines two values, can be used to combine two _patterns_ of values.[^In other words, in functional programming terms, in Tidal a pattern is an applicative functor.]

As a trivial example, let's combine two tidal patterns `fastcat [1,2,3]` and `fastcat [4,5]`. The first thing to note is that `fastcat` combines a list of patterns into a contiguous sequence, of equal durations over a cycle. The metrical cycle is in general the reference point in a Tidal operation, rather than a beat or step. Therefore, we need to combine two patterns with different structures - one has three events per cycle, and the other has two. We can visualise them like this:

```{.haskell render="partnum" width="50%" height="5%"}
fastcat [1,2,3]
```
```{.haskell render="partnum" width="500"}
fastcat [4,5]
```

Patterns continue into infinity, but in the examples here we visualise just the first metrical cycle. We can combine these two patterns by adding them together with `+`:

```{.haskell render="partnum" width="500"}
fastcat [1,2,3] + fastcat [4,5]
```

In the above, `1` gets added to part of `4`, `2` gets split between `4` and `5`, and `3` gets added to part of `5`. An alternative operator, `|+`, privileges structure on the left. The same events are matched up, but the resulting events maintain the ‘wholes’ from the pattern on the left hand side of the operator:

```{.haskell render="partnum" width="500"}
fastcat [1,2,3] |+ fastcat [4,5]
```

Event fragments are shown with their active parts shaded within their original 'whole'. Conversely, the `+|` operator privileges structure from the right hand pattern:

```{.haskell render="partnum" width="500"}
fastcat [1,2,3] +| fastcat [4,5]
```

Note that when such a pattern structure reaches the scheduler, only the events that have their onsets intact will result in an event actually being triggered. That is, the start of an event’s ‘part’ must be the same as that of its ‘whole’ to result in sound, otherwise it represents a fragment of an event’s tail, only useful for combining with other events.^[A model that works beyond trigger messages, allowing continual varying of a sound’s parameters after it has been triggered, is at working prototype stage.] Accordingly, the first example would trigger four sounds, the second three sounds, and the final one two sounds.

Tidal has a set of such operators for basic arithmetic, but any function can be used to combine patterns together in this way by using Haskell’s standard syntax for applicative functors, with Tidal’s additional nonstandard operators `<*` and `*>` for privileging structure on the left or right. For example, to merge two colour patterns using the `blend` function, with an additional continuous sine pattern to control the blend from one pattern to another:

```{.haskell render="gradient" width="500"}
blend
  <$> (slow 4 sine)
  *> "[blue, pink red grey, darkblue]*20"
  <*> "{blue orange, darkgrey yellow white}*11.5"
```

Instead of using 'fastcat', the above makes straightforward use of Tidal's mini-notation for polyrhythmic sequences, denoted by double quotes.

It is worth reiterating at this point that all these patterns are functions, and not data structures. By combining them in this way we are not computing anything, only creating a new function composed of other functions, i.e. composing behaviours. No calculation actually takes place until the resulting pattern is queried.

## Patterned parameters

TidalCycles has a large library of combinators, but for the purpose of this paper we will focus on just one, the `fast` function, which simply speeds up (or for factors < 1 slows down) a pattern.  Its definition is minimal, taking a time factor and a target pattern as input, and manipulating the target pattern's timeline according to the factor:

```{.haskell}
fast timepat pat =
  innerJoin ((\time -> withResultTime (/ time) $
                       withQueryTime (* time) pat)
              <$> timepat
            )
```

What is interesting in the above is that the time factor input is itself a pattern. With combined use of the `<$>` operator and `innerJoin` function, we manipulate the target pattern _inside_ the pattern of time. This higher order magic uses much the same procedure to combine patterns as the one described earlier. The result is a highly flexible function for patterning the speed of a pattern. For example:

```{.haskell render="gradient" width="500"}
fast 4 $ fast "1 2 3" "white pink red orange"
```

The above switches between slices of the colour pattern running at different speeds. An additional `fast` function is applied so that you can see four cycles of the result. Once a few more simple transformations are added, textures begin to form:

```{.haskell render="gradient" width="500"}
superimpose rev $ superimpose (fast 2)
   $ chunk 4 (blend 0.5 red <$>) 
   $ superimpose rev 
   $ fast "1 5 3" 
   $ iter 4 "white pink red orange"
```

Again, the above code does not calculate anything on its own, it composes together into a single function, which is then passed to the scheduler (or in this case, graphics renderer) which queries the required time arcs.

## TidalCycles as algorithmic pattern interface

Please refer to [tidalcycles.org](https://tidalcycles.org) for further details of Tidal's library of combinators, polyrhythmic mini-notation, and independently patternable effects. But already, we can see some of the affordances which Tidalcycles offers. Every part of the above code example is trivial on its own, starting with a four-step sequence, and adding simple transformations on top. However, the results quickly become astonishingly complex, with each edit giving results which become practically impossible to predict. This is because the different elements interfere with each other, so that every simple part has complex influence over the whole.

# Algorithmic Pattern in Hand Weaving

Hand weaving is an advanced world of technology, having developed over thousands of years within diverse cultures of practice across the world. All weaving is digital technology, in that it involves discrete crossing points between warp (vertical) and weft (horizontal) threads. As with Tidal, a weave involves interference between multiple interacting systems. In other words, all weavers work with algorithmic patterns, _especially_ hand weavers, who work without any machine or computer to do calculations for them, so do it all themselves.

## Colour and weave

It is difficult to get across the complexities of weave in a single paper, but one clear example is the family of colour-and-weave effects, where systems of colour and binary structure interfere to create the end result [@McLean18]. The following shows an elementary example with a diagonal 'twill' structure. The left shows the weave 'block' structure, a binary grid representing meeting points between warp and weft threads. A square is black where a weft goes over the warp, and white where it goes under. The central diagram shows a simulation of this pattern woven with light weft and dark warp threads, with the diagonal structure visible in the results. However, if we weave the same structure with alternating light and dark threads on both the warp and weft, the result (shown on the right) has the appearance of a diagonal moving in a different direction. This is a trivial example of a colour-and-weave effect, which can be exploited to create a wide range of imagery from the same grid structure.

\begin{figure}[h]
\includegraphics[width=0.5\textwidth]{twill.png}
\end{figure}

## Double weave

Working with weaves as a two dimensional binary structure is a useful abstraction, but like all abstractions is not a complete model. The threads of weaves move in three dimensions, with the structure of the threads themselves, and their behaviour under tension, having strong bearing on the end result. It is therefore a mistake to think that the binary grid fully represents reality. Such a mistake seems to have been made by @Gruenbaum80, who approach weaving from the point of view of two-dimensional tiling patterns. Using geometric rules, they prove that the following weave structure result in a textile which 'falls apart':

\begin{figure}[h]
\includegraphics[width=0.5\textwidth]{grafik1.png}
\end{figure}

When this structure is 'woven' using rigid card, this does appear to be the case; half of the weave lifts off the rest, resulting in highly unstable structures:

\includegraphics[width=0.4\textwidth]{card.png}

However as can be seen below, if we weave the structure with warp threads under tension on a loom, we find that the two layers hold together perfectly. Rather than 'falling apart', the textile simply splits in two. In fact, this technique of weaving two (or more) layers at once is very well known by weavers as double (or triple, etc) weave, resulting in a thick structure, where threads from the two layers can exchange to create a range of effects.[^ The weave was itself live coded, on the 'live loom' [@mclean_live_2020]]

\begin{figure}[h]
\includegraphics[width=0.4\textwidth]{weave.jpg}
\end{figure}

# Algorithmic Pattern as Interface

To conclude, let's consider the place of algorithmic pattern as an interface between a musician and their music. We have seen how the algorithmic patterning of interference patterns within a two-dimensional grid acts as an interface between weaver and weave. It allows manipulation of textile at one-step removed, in terms of higher order structure that can generate surprising results, including through colour-and-weave and double weave effects. But when weaving we must recognise that the block design is only one part of the whole, and that to weave is both a computational and embodied experience where abstract algorithmic patterns meet real-world behaviours. It is not possible to understand a woven structure without actually weaving it.

The same lesson applies to algorithmic patterns in live coding. We can work with the pattern as code, but it does not notate what we hear and feel. Not only do interference patterns work inside the computer at scales beyond our imaginations, but they then leave the computer as sound, perceived as music in ways which do not exist in the notation but in our embodied minds. Live coding involves an improvised movement of pattern across cognition, computation and perception, a fundamentally experimental activity, where code is developed in the open-minded and open-bodied spirit of discovery. Without understanding that the algorithm is only one step in the creation of music, we might find that our music simply falls apart.

# Acknowledgments

This research is conducted by the PENELOPE  project, with funding from the European Research Council (ERC) under the Horizon 2020 research and innovation programme of the European Union, grant agreement No 682711.

# Bibliography

\small
