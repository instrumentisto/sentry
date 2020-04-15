#!/usr/bin/env bats


@test "post_push hook is up-to-date" {
  run sh -c "make post-push-hook out=/dev/stdout | grep 'for tag in' \
                                                 | cut -d '{' -f 2 \
                                                 | cut -d '}' -f 1"
  [ "$status" -eq 0 ]
  [ ! "$output" = '' ]
  expected="$output"

  run sh -c "cat hooks/post_push | grep 'for tag in' \
                                 | cut -d '{' -f 2 \
                                 | cut -d '}' -f 1"
  [ "$status" -eq 0 ]
  [ ! "$output" = '' ]
  actual="$output"

  [ "$actual" = "$expected" ]
}
