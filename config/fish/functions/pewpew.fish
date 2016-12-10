function pewpew
    for env in {3,next}
        for task in {wheel,install}
            pew in $env pip $task -r ~/.requirements.txt
        end
    end
end
