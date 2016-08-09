#
#
#
# The status codes from
# https://developer.mozilla.org/en-US/docs/Web/HTTP/Status

require 'sinatra'
require "sinatra/reloader"

set :port, 2048

codes = %w(
  100 101
  200 201 202 203 204 205 206
  300 301 302 303 304 305 307 308
  400 401 402 403 404 405 406 407 408 409 410 411 412 413 414 415 416 417 421 426 428 429 421 451
  500 501 502 503 504 505 506 507 511
)

codes.each do |code|
  get '/' + code.to_s do
    status code
  end

  post '/' + code.to_s do
    status code
  end

  patch '/' + code.to_s do
    status code
  end

  put '/' + code.to_s do
    status code
  end

  delete '/' + code.to_s do
    status code
  end
end
