# The status codes from
# https://developer.mozilla.org/en-US/docs/Web/HTTP/Status

require 'sinatra'
require "sinatra/reloader"


set :port, 2048 # use custom port to avoid conflict with development env

codes = [
  { status: 100, description: 'Continue' },
  { status: 101, description: 'Switching Protocol' },

  { status: 200, description: 'OK' },
  { status: 201, description: 'Created' },
  { status: 202, description: 'Accepted' },
  { status: 203, description: 'Non-Authoritative Information' },
  { status: 204, description: 'No Content' },
  { status: 205, description: 'Reset Content' },
  { status: 206, description: 'Partial Content' },

  { status: 300, description: 'Multiple Choice' },
  { status: 301, description: 'Moved Permanently' },
  { status: 302, description: 'Found' },
  { status: 303, description: 'Multiple Choice' },
  { status: 304, description: 'Not Modified' },
  { status: 305, description: 'Use Proxy' },
  { status: 307, description: 'Temporary Redirect' },
  { status: 308, description: 'Permanent Redirect' },

  { status: 400, description: 'Bad Request' },
  { status: 401, description: 'Unauthorized' },
  { status: 402, description: 'Payment Required' },
  { status: 403, description: 'Forbidden' },
  { status: 404, description: 'Not Found'},
  { status: 405, description: 'Method Not Allowed'},
  { status: 406, description: 'Not Acceptable'},
  { status: 407, description: 'Proxy Authentication Required'},
  { status: 408, description: 'Request Timeout'},
  { status: 409, description: 'Conflict'},
  { status: 410, description: 'Gone'},
  { status: 411, description: 'Length Required'},
  { status: 412, description: 'Precondition Failed'},
  { status: 413, description: 'Payload Too Large'},
  { status: 414, description: 'URI Too Long'},
  { status: 415, description: 'Unsupported Media Type'},
  { status: 416, description: 'Requested Range Not Satisfiable'},
  { status: 417, description: 'Expectation Failed'},
  { status: 421, description: 'Misdirected Request'},
  { status: 426, description: 'Upgrade Required'},
  { status: 428, description: 'Precondition Required'},
  { status: 429, description: 'Too Many Requests'},
  { status: 431, description: 'Request Header Fields Too Large'},
  { status: 451, description: 'Unavailable For Legal Reasons'},

  { status: 500, description: 'Internal Server Error'},
  { status: 501, description: 'Not Implemented'},
  { status: 502, description: 'Bad Gateway'},
  { status: 503, description: 'Service Unavailable'},
  { status: 504, description: 'Gateway Timeout'},
  { status: 505, description: 'HTTP Version Not Supported'},
  { status: 506, description: 'Variant Also Negotiates'},
  { status: 507, description: 'Variant Also Negotiates'},
  { status: 511, description: 'Network Authentication Required'}
]

codes.each do |code|
  get '/' + code[:status].to_s do
    make_response(code)
  end

  post '/' + code[:status].to_s do
    make_response(code)
  end

  patch '/' + code[:code].to_s do
    make_response(code)
  end

  delete '/' + code[:code].to_s do
    make_response(code)
  end

  put '/' + code[:code].to_s do
    make_response(code)
  end
end

def make_response(code)
  status code[:status]
  "<a target='_blank' href='#{code_url(code[:status])}'>#{code[:status].to_s} #{code[:description]}</a>"
end

def code_url(status)
  'https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/' + status.to_s
end
