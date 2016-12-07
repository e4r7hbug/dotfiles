function pewpew
	for env in {3,3.6}
        for task in {wheel,install}
            pew in $env pip $task -r ~/.requirements.txt
        end
    end
end
