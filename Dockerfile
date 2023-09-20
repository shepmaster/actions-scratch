# syntax=docker/dockerfile:1

FROM alpine:latest as base

COPY apt /apt
RUN echo 'APT update' && sleep '5'

FROM base as step-1

COPY step-1 /step-1
RUN echo 'Step 1' && sleep '5'

FROM base as step-2

COPY step-2 /step-2
    RUN echo 'Step 2' && sleep '5'

FROM base as run

COPY --from=step-1 /step-1 /step-1
COPY --from=step-2 /step-2 /step-2
RUN echo 'Run' && sleep '5'

ENTRYPOINT [ "/bin/true" ]
