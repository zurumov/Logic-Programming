#  A simple constraint satisfation problem

# Smith, Baker, Carpenter and Tailor have each a different profession (smith, baker, carpenter, tailor) but not showed by their names, i.e. the Smith is not a smith, etc. Each of them has a son. But the sons do not have the profession showed by their name, either.
# Find the professions of the parents and sons if: 
# - No son has the same profession as his father has
# - Baker has the same profession as Carpenter s son has
# - Smith s son is a baker


profession(smith).
% ...

profs( S, B, C, T, SonS, SonB, SonC, SonT ) :-
  
  profession(S), 	% all have a profession
% ...
  
  profession(SonS), 	% all sons have a profession
% ...
  
  S\=smith, 		% profession not showed by their names
% ...
  
  SonS\=smith,  	% the sons do not have the profession showed by their name
% ...
  
  S\=B, 		% each have a different profession
% ...
  
  S\=SonS, 		% No son has the same profession as his father has
% ...
  
  B=SonC,		% Baker same profession as Carpenters son
  SonS=baker. 		% Smith's son is a baker
  