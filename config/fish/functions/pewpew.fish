function pewpew
    for task in {wheel,install}
        for env in {3,next}
            pew in $env pip $task -r ~/.requirements.txt
        end

        pew in ansible pip $task -r ~/.requirements-ansible.txt
    end
end
