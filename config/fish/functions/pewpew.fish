function pewpew
	for env in {2,3,beta}
        for task in {wheel,install}
            pew in $env pip $task -r ~/.requirements.txt
        end
    end
end
