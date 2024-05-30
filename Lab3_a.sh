#!/bin/bash
git commit #dodaje migawki śledzonych plików
git branch #tworzy nowa gałąź
git checkout nazwa_gałezi | git switch nawa.. #gałezie - wsk do danego commita - wyznacznie gałezi do pracy
#gałąź to branch
git checkout -b # tworzy i przechodzi 
git merge nazwa_gałezi # Łączenie gałęzi - mergeowanie
git rebase #kopiuje commity i przerzuca je w inne miejsce 
git checkout CX #Head to nazwa dla aktualnie checkoutowanego commita
git log #Referencje wzgledne - sprawdzanie haszy 
git reset #odwraca zmiany poprzez przesunięcie referencji gałęzi wstecz w czasie do starszego commita.
git cherry-pick <Commit1> <Commit2> <...> #Jest to bardzo prosty sposób określenia, że chcesz przenieść zmiany poniżej swojej obecnej lokalizacji (HEAD). Osobiście uwielbiam cherry-pick, ponieważ działa prosto i skutecznie.
git tag nazwa_tagu <commit> #tagowanie commitow
git describe <ref> #<ref> jest czymkolwiek, co git może odnieść do commita. Jeśli nie podasz <ref>, git użyje aktualnie checkoutowanego miejsca (HEAD).
<tag>_<numCommits>_g<hash> #tag jest znacznikiem najbliższego przodka w historii, numCommits jest liczbą commitów od tego znacznika, a <hash> jest haszem opisywanego commitu.

Previous


4:
git checkout -b bugFix
git commit
git switch main
git commit
git switch bugFix
git rebase main


5:
git checkout C4
6
git checkout C3
7
git checkout C6
git branch -f bugFix HEAD~4
git branch -f main HEAD
git checkout C1

8
git checkout main
git branch -f local HEAD
git checkout pushed
git revert HEAD
9
git cherry-pick C3 C4 C7
10
git rebase -i HEAD~4
11
git rebase -i HEAD~3
git branch -f main HEAD
12
git rebase -i C1
git commit --amend
git rebase -i C1
git branch -f main HEAD

13
git checkout main
git cherry-pick C2
git branch -f main C1 #przenosi wsk i gałąź do wybranego commita
git cherry-pick C2 C3

14
git tag v1 C2
git tag v0 C1
git switch C2

15
git describe bugFix 
git commit

16
git checkout bugFix 
git rebase -i C2
git switch side
git rebase -i bugFix
git checkout another
git branch -f main HEAD

17
git branch -f bugWork HEAD~^2~

18
git checkout one 
git cherry-pick C4 C3 C2
git switch two
git cherry-pick C5 C4 C3 C2
git branch -f three C2


jakies tam zmiany do spr bla bla bla bla 