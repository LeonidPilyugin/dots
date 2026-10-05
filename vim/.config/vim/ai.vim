" Define a shared configuration block for your local llama-server
let s:local_llama_options = {
\  "endpoint_url": "http://localhost:8080/v1/chat/completions",
\  "model": "qwen2.5-coder-7b-instruct",
\  "auth_type": "none",          "temperature": 0.2,
\  "max_tokens": 2048,
\  "stream": 1,
\}

" Apply this configuration to all vim-ai commands
let g:vim_ai_chat = { "options": s:local_llama_options }
let g:vim_ai_complete = { "options": s:local_llama_options }
let g:vim_ai_edit = { "options": s:local_llama_options }
