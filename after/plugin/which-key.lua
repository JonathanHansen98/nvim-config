local wk = require("which-key")

wk.register({
  h = {
    name = "+[H]arpoon",
    v = { "View Sessions" },
    a = { "Add Current File" },
    ["1"] = { "Session 1" },
    ["2"] = { "Session 2" },
    ["3"] = { "Session 3" },
    ["4"] = { "Session 4" },
  },
  f = {
    name = "+Telescope [F]ile Browser",
    f = { "Find Files" },
    g = { "Live Grep" },
    b = { "Folder Browser" },
    B = { "Search Buffers" },
    h = { "Help Tags" },
  },
  t = {
    name = "+Nerd[T]ree",
    t = { "Toggle" },
    f = { "Focus" },
    F = { "Find File" },
  },
  b = {
    name = "[B]uffers", -- Group name
    [","] = { "<cmd>BufferPrevious<cr>", "Previous" },
    ["."] = { "<cmd>BufferNext<cr>", "Next" },
    ["<"] = { "<cmd>BufferMovePrevious<cr>", "Move Left" },
    [">"] = { "<cmd>BufferMoveNext<cr>", "Move Right" },
    ["1"] = { "<cmd>BufferGoto 1<cr>", "Go to Buffer 1" },
    ["2"] = { "<cmd>BufferGoto 2<cr>", "Go to Buffer 2" },
    ["3"] = { "<cmd>BufferGoto 3<cr>", "Go to Buffer 3" },
    ["4"] = { "<cmd>BufferGoto 4<cr>", "Go to Buffer 4" },
    ["5"] = { "<cmd>BufferGoto 5<cr>", "Go to Buffer 5" },
    ["6"] = { "<cmd>BufferGoto 6<cr>", "Go to Buffer 6" },
    ["7"] = { "<cmd>BufferGoto 7<cr>", "Go to Buffer 7" },
    ["8"] = { "<cmd>BufferGoto 8<cr>", "Go to Buffer 8" },
    ["9"] = { "<cmd>BufferGoto 9<cr>", "Go to Buffer 9" },
    ["0"] = { "<cmd>BufferLast<cr>", "Go to Last Buffer" },
  },
  s = {
    name = "+[S]plits",
    h = "Horizontal Split",
    v = "Vertical Split",
    c = "Close Split"
  },
  g = {
    name = "+[G]it",
    h = {
      name = "+Github",
      c = {
        name = "+Commits",
        c = { "<cmd>GHCloseCommit<cr>", "Close" },
        e = { "<cmd>GHExpandCommit<cr>", "Expand" },
        o = { "<cmd>GHOpenToCommit<cr>", "Open To" },
        p = { "<cmd>GHPopOutCommit<cr>", "Pop Out" },
        z = { "<cmd>GHCollapseCommit<cr>", "Collapse" },
      },
      i = {
        name = "+Issues",
        p = { "<cmd>GHPreviewIssue<cr>", "Preview" },
      },
      l = {
        name = "+Litee",
        t = { "<cmd>LTPanel<cr>", "Toggle Panel" },
      },
      r = {
        name = "+Review",
        b = { "<cmd>GHStartReview<cr>", "Begin" },
        c = { "<cmd>GHCloseReview<cr>", "Close" },
        d = { "<cmd>GHDeleteReview<cr>", "Delete" },
        e = { "<cmd>GHExpandReview<cr>", "Expand" },
        s = { "<cmd>GHSubmitReview<cr>", "Submit" },
        z = { "<cmd>GHCollapseReview<cr>", "Collapse" },
      },
      p = {
        name = "+Pull Request",
        c = { "<cmd>GHClosePR<cr>", "Close" },
        d = { "<cmd>GHPRDetails<cr>", "Details" },
        e = { "<cmd>GHExpandPR<cr>", "Expand" },
        o = { "<cmd>GHOpenPR<cr>", "Open" },
        p = { "<cmd>GHPopOutPR<cr>", "PopOut" },
        r = { "<cmd>GHRefreshPR<cr>", "Refresh" },
        t = { "<cmd>GHOpenToPR<cr>", "Open To" },
        z = { "<cmd>GHCollapsePR<cr>", "Collapse" },
      },
      t = {
        name = "+Threads",
        c = { "<cmd>GHCreateThread<cr>", "Create" },
        n = { "<cmd>GHNextThread<cr>", "Next" },
        t = { "<cmd>GHToggleThread<cr>", "Toggle" },
      },
    },
  },
}, { prefix = "<leader>" })
