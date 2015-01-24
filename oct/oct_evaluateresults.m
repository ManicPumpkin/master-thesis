clc

fprintf("EvaluateResults\n");
fprintf("===============\n\n");

file 	= "/home/skid/Work/master-thesis/tst/Test_01/results.txt";
[f] 	= fopen(file);
line 	= fgetl(f);
cnt		= 1;

matches = struct("name", "", "count", 0, "correct", 0, "percent", 0);

while ischar(line)
	if(regexp(line , "tst:.*"))
		name 	= strsplit(strsplit(line, ":"){1, 2}, "1,2,3,4,5,6,7,8,9,0"){1, 1};
		name 	= name(2:length(name)-1);

		if(!strcmp(matches(cnt).name, name))
			cnt++;
			matches(cnt).name 		= name;
			matches(cnt).count 		= 0;
			matches(cnt).correct	= 0;
			matches(cnt).percent 	= 0;
		endif

		matches(cnt).count++;
	elseif(regexp(line, "db:.*"))
		match 	= strsplit(line, ":"){1, 2};
		match 	= match(2:length(match));
		%disp([matches(cnt).name match]);
		if(strcmp(matches(cnt).name, match))
			matches(cnt).correct++;
		endif	
	endif

	line 	= fgetl(f);
end
fclose(f);

fid 	= fopen([file "_eval.txt"], 'a');
matches = matches(2:length(matches));

for(cnt=1 : length(matches))
	matches(cnt).percent 	= matches(cnt).correct / matches(cnt).count * 100;
	fputs(fid, disp(matches(cnt)));
endfor
fclose(fid);
