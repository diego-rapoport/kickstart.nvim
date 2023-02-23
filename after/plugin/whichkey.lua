local wk = require('which-key')

local nopts = {
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local vopts = {
  mode = "v", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

-- Registros básicos
wk.register({
  ["/"] = { "<Plug>(comment_toggle_linewise_current)", "Comentar código" },
}, nopts)
wk.register({
  ["/"] = { "<Plug>(comment_toggle_blockwise_visual)", "Comentar código" },
}, vopts)
wk.register({
  h = { "<cmd>nohls<cr>", "Desliga seleção" },
}, nopts)
wk.register({
  q = { "<cmd>q<cr>", "Sair!" },
}, nopts)
wk.register({
  r = { "<cmd>RnvimrToggle<cr>", "Abre ranger" },
}, nopts)
wk.register({
  c = { "<cmd>bdelete!<cr>", "Fecha o buffer" },
}, nopts)

-- Registros aninhados --

-- Árvore de arquivos
wk.register({
  a = {
    name = "Arquivos",
    a = { "<cmd>NeoTreeShowToggle<cr>", "Abre a árvore de arquivos" },
  },
}, nopts)

-- Bufferline
wk.register({
  b = {
    name = "Buffer",
    l = { "<cmd>:BufferLineCloseRight<cr>", "Fecha todas as abas à direita" },
    L = { "<cmd>:BufferLineMoveNext<cr>", "Move buffer à direita" },
    h = { "<cmd>:BufferLineCloseLeft<cr>", "Fecha todas as abas à esquerda" },
    H = { "<cmd>:BufferLineMovePrev<cr>", "Move buffer à esquerda" },
    s = { "<cmd>:vsplit<cr>", "Split vertical" },
    S = { "<cmd>:split<cr>", "Split horizontal" },
  },
}, nopts)

-- Configs
wk.register({
  C = {
    name = "Configs",
    m = { "<cmd>Telescope menu configs<cr>", "Abrir menu de arquivos de configuração" },
  },
}, nopts)

-- FSRead
wk.register({
  F = {
    name = "FSReader",
    t = { "<cmd>FSToggle<cr>", "Toggle leitor FS" },
  },
})

-- Git lazy
wk.register({
  g = {
    name = "Lazygit",
    g = { "<cmd>LazyGitCurrentFile<cr>", "Abre lazygit no arquivo atual" },
    C = { "<cmd>LazyGiConfig<cr>", "Abre configs do lazygit" },
    d = { "<cmd>DiffviewOpen<cr>", "Abre git diff" },
    c = { "<cmd>DiffviewClose<cr>", "Fecha git diff" },
  },
}, nopts)

-- LSP
wk.register({
  l = {
    name = "LSP",
    a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Ação de código" },
    d = { "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>", "Diagnósticos de Buffer" },
    w = { "<cmd>Telescope diagnostics<cr>", "Diagnósticos" },
    f = { "<cmd>lua vim.lsp.buf.format()<cr>", "Formatar arquivo" },
    i = { "<cmd>LspInfo<cr>", "Informações" },
    I = { "<cmd>Mason<cr>", "Mason" },
    j = {
      vim.diagnostic.goto_next,
      "Próximo Diagnóstico",
    },
    k = {
      vim.diagnostic.goto_prev,
      "Diagnóstico Anterior",
    },
    l = { vim.lsp.codelens.run, "Ação Code Lens" },
    q = { vim.diagnostic.setloclist, "Conserto rápido" },
    r = { vim.lsp.buf.rename, "Renomear" },
    s = { "<cmd>Telescope lsp_document_symbols<cr>", "Símbolos de Documento" },
    S = {
      "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
      "Símbolos do Ambiente de Espaço",
    },
    e = { "<cmd>Telescope quickfix<cr>", "Conserto Rápido do Telescope" },
  },
}, nopts)

-- Mind
wk.register({
  m = {
    name = "Mind",
    o = { "<cmd>MindOpenProject<cr>", "Abrir (novo) projeto" },
    s = { "<cmd>MindOpenSmartProject<cr>", "Abrir (novo) projeto local ou global" },
    c = { "<cmd>MindClose<cr>", "Fechar projeto mind" },
    M = { "<cmd>MindOpenMain<cr>", "Abrir projeto raiz(main)" },
  },
}, nopts)

-- NEORG
wk.register({
  n = {
    name = "Neorg",
    w = { "<cmd>Telescope neorg switch_workspace<cr>", "Áreas de trabalho" },
    l = { "<cmd>Telescope neorg insert_link<cr>", "Inserir link" },
    f = { "<cmd>Telescope neorg insert_file_link<cr>", "Inserir link de arquivo" },
    n = { "<cmd>e ~/Documentos/Norgs/index.norg<cr>", "Editar index" },
  },
}, nopts)

-- Projetos
wk.register({
  p = {
    name = "Projetos",
    r = { '<cmd>lua require"telescope".extensions.projects.projects{}<cr>', "Abre projetos recentes" },
    p = { "<cmd>Telescope project<cr>", "Abre todos os projetos da pasta Programação" },
  },
}, nopts)

-- Packer
wk.register({
  P = {
    name = "Packer",
    s = { "<cmd>PackerSync<cr>", "Sincronizar plugins" },
    c = { "<cmd>PackerClean<cr>", "Limpa pacotes não utilizados" },
    S = { "<cmd>PackerSnapshot<cr>", "Salva estado do packer" },
  },
}, nopts)

-- Buscas
wk.register({
  s = {
    name = "Buscar",
    -- d = { "<cmd>Telescope lsp_document_diagnostics<cr>", "Diagnósticos de documento" },
    -- D = { "<cmd>Telescope lsp_workspace_diagnostics<cr>", "Diagnósticos de ambiente de espaço" },
    e = { "<cmd>Telescope symbols<cr>", "Busca de emojis" },
    -- F = { "<cmd>Telescope filetypes<cr>", "Tipos de arquivos" },
    f = { "<cmd>Telescope find_files<cr>", "Achar arquivos" },
    h = { "<cmd>Telescope command_history<cr>", "Histórico" },
    -- i = { "<cmd>Telescope media_files<cr>", "Arquivos de mídia" },
    M = { "<cmd>Telescope man_pages<cr>", "Arquivos man" },
    m = { "<cmd>Telescope marks<cr>", "Marcas" },
    o = { "<cmd>Telescope vim_options<cr>", "Opções do vim" },
    r = { "<cmd>Telescope registers<cr>", "Registros" },
    G = { "<cmd>Telescope live_grep<cr>", "Grep ao vivo" },
    u = { "<cmd>Telescope colorscheme<cr>", "Cores de sistema" },
  },
}, nopts)

