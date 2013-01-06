; General triggers.

; void trigger
/def -t"*Your eyes glaze over." getback = who sucker %; who boring

; wakeup trigger
/def -t"*In your dreams, or what?" wakeup = wake

; quest trigger
/def -t"QUEST: You may now quest again." questagain = echo @RTime to Quest!@w

; skin trigger!
/def -t"You receive * experience points." skin = skin cloak

; used to see if we beep on war, or on double
/set supern 0

/def doubeep = /if (supern < 1) /beep %; /endif
/def n00beep = /if (supern == 1) /beep %; /endif

; beep on double if not SN!
/def -t"For the next 10 minutes experience is doubled in honor of the new superhero." remindme = /doubeep
/def -t"Aardwolf rejoices in the death of another MILLION monsters." remindmehour = /doubeep

; beep on wars in the right range if SN!
; /def -mregexp -t"^WARFARE: A (race|class|clan) war has been declared by ([A-Z][a-z]+) for levels ([0-9]+) to ([0-9]+)!" beepwar = /if (%P4 < 21) /n00beep %; /endif
; /def -mregexp -t"^WARNING: Genocide has been declared by ([A-Z][a-z]+) for levels ([0-9]+) to ([0-9]+)!" beepgeno = /if (%P3 < 21) /n00beep %; /endif


;beepwar2 = /if (%4 < 26) /n00beep %; /endif

; O RLY?
; happy owl
/def owl = /if (%{1} =~ "clan") %{1} @y>@W((@Y^@Wv@Y^@W))@y< @Y. o O ( %{-1} ) %; /elseif (%{1} =~ "ftalk") %{1} @y>@W((@Y^@Wv@Y^@W))@y< @C. o O ( %{-1} ) %; /elseif (%{1} =~ "gclan") %{1} @y>@W((@Y^@Wv@Y^@W))@y< @w. o O ( %{-1} ) %; /else %{1} @y>@W((@Y^@Wv@Y^@W))@y< @w. o O ( %{-1} ) %; /endif

; surprised owl
/def owl2 = /if (%{1} =~ "clan") %{1} @y>@W(@Yo@y.@YO@W)@y< @Y. o O ( %{-1} ) %; /elseif (%{1} =~ "ftalk") %{1} @y>@W(@Yo@y.@YO@W)@y< @C. o O ( %{-1} ) %; /elseif (%{1} =~ "gclan") %{1} @y>@W(@Yo@y.@YO@W)@y< @w. o O ( %{-1} ) %; /else %{1} @y>@W(@Yo@y.@YO@W)@y< @w. o O ( %{-1} ) %; /endif

; LUOL! owl
/def owl3 = %{1} ( %{-1} ) O o . @y>@Y^@W)

; make pupping quicker
/def d = back d %; balor %; spiral %; spiral %; spiral %; spiral %; spiral %; spiral
/def g = back g %; balor %; spiral %; spiral %; spiral %; spiral %; spiral %; spiral
/def b = back b %; balor %; spiral %; spiral %; spiral %; spiral %; spiral %; spiral
/def f = back fea %; balor %; spiral %; spiral %; spiral %; spiral %; spiral %; spiral
/def c = back cl %; balor %; spiral %; spiral %; spiral %; spiral %; spiral %; spiral
