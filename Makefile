REPOS := \
    ingydotnet/git-subrepo \
    ingydotnet/git-hub \
    \
    ingydotnet/bashplus \
    ingydotnet/test-more-bash \
    ingydotnet/json-bash \
    ingydotnet/getopt-bash \
    ingydotnet/config-ini-bash \
    \
    complete-shell/complete-shell \
    \
    testml-lang/testml \
    \
    pegex-parser/json-pgx \
    pegex-parser/pegex-pm \
    pegex-parser/pegex-pgx \
    \
    makeplus/makeplus \
    \
    ingydotnet/inline-pm \
    ingydotnet/inline-c-pm \
    ingydotnet/jemplate \
    ingydotnet/vroom-pm \
    \
    yaml/yaml-reference-parser \
    yaml/yaml-test-suite \
    yaml/yaml-editor \

s ?= 1

.PHONY: run
run:
	vroom vroom --skip=$$(($s - 1))

repos: $(REPOS)

$(REPOS):
	git hub clone $@

clean:
	vroom $@
	rm -f code.*

realclean:
	for repo in $(REPOS); do \
	    rm -fr $${repo#*/}; \
	done
