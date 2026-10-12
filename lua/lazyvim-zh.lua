-- ============================================================
-- LazyVim 快捷键菜单 · 纯中文（含图标）
-- 生成时间：2026-10-12 02:02
--
-- 原理：which-key 显示的“文字”来自每条映射的 desc / 分组名 group。
--       只写 desc/group、不写执行动作(rhs)，就只改文字，真实快捷键一点都不变；
--       删掉本文件立刻恢复英文。
--
-- 图标：which-key 的图标本来是拿「英文描述里的关键词」匹配规则得到的
--       （file→文件 / find→放大镜 / window→窗口 …），文字变中文就匹配不上、图标会消失。
--       这里的做法：等 which-key 就绪后，先让它自己把图标算出来（含插件规则、父级继承）再改文字；
--       取不到就用生成时算好的静态图标兜底。
--
-- 安装：放到 ~/.config/nvim/lua/plugins/ 下，重启 nvim。
-- 改词：直接改下面的中文。_g 结尾的表是分组名，其余是具体快捷键。
-- ============================================================

local M = {}

-- ===== 模式 n：具体快捷键 =====
M.cn = {
  ["!"] = "运行程序",
  ["\""] = "寄存器",
  ["#"] = { "向前搜索光标词", icon = { icon = " ", color = "green" } },
  ["$"] = "行尾",
  ["%]"] = "下一个未匹配组",
  ["&"] = "重复 :s",
  ["'"] = "标记",
  ["*"] = { "向后搜索光标词", icon = { icon = " ", color = "green" } },
  [","] = "上一个 f/t/F/T",
  ["."] = "重复",
  ["/"] = { "向前搜索", icon = { icon = " ", color = "green" } },
  ["0"] = "行首",
  [";"] = "下一个 f/t/F/T",
  ["<"] = "减少缩进",
  ["<C-/>"] = { "终端", icon = { icon = " ", color = "red" } },
  ["<C-[>"] = "取消",
  ["<C-b>"] = "上翻页",
  ["<C-c>"] = "中断",
  ["<C-d>"] = "下半页",
  ["<C-f>"] = "下翻页",
  ["<C-r>"] = "重做",
  ["<C-s>"] = "保存",
  ["<C-u>"] = "上半页",
  ["<Esc>"] = "取消",
  ["<c-w>+"] = { "增加高度", icon = { icon = " ", color = "blue" } },
  ["<c-w>-"] = { "减少高度", icon = { icon = " ", color = "blue" } },
  ["<c-w><"] = { "减少宽度", icon = { icon = " ", color = "blue" } },
  ["<c-w>="] = { "等高等宽", icon = { icon = " ", color = "blue" } },
  ["<c-w>>"] = { "增加宽度", icon = { icon = " ", color = "blue" } },
  ["<c-w>H"] = { "移至最左侧", icon = { icon = " ", color = "blue" } },
  ["<c-w>J"] = { "移至最底部", icon = { icon = " ", color = "blue" } },
  ["<c-w>K"] = { "移至最顶部", icon = { icon = " ", color = "blue" } },
  ["<c-w>L"] = { "移至最右侧", icon = { icon = " ", color = "blue" } },
  ["<c-w>T"] = { "拆分到新标签页", icon = { icon = "󰓩 ", color = "purple" } },
  ["<c-w>_"] = { "最大高度", icon = { icon = " ", color = "blue" } },
  ["<c-w>h"] = { "移至左侧窗口", icon = { icon = " ", color = "blue" } },
  ["<c-w>j"] = { "移至下方窗口", icon = { icon = " ", color = "blue" } },
  ["<c-w>k"] = { "移至上方窗口", icon = { icon = " ", color = "blue" } },
  ["<c-w>l"] = { "移至右侧窗口", icon = { icon = " ", color = "blue" } },
  ["<c-w>o"] = { "关闭其他窗口", icon = { icon = " ", color = "blue" } },
  ["<c-w>q"] = { "关闭窗口", icon = { icon = " ", color = "blue" } },
  ["<c-w>s"] = { "水平分割", icon = { icon = " ", color = "blue" } },
  ["<c-w>v"] = { "垂直分割", icon = { icon = " ", color = "blue" } },
  ["<c-w>w"] = { "切换窗口", icon = { icon = " ", color = "blue" } },
  ["<c-w>x"] = { "与下一个交换", icon = { icon = " ", color = "blue" } },
  ["<c-w>|"] = { "最大宽度", icon = { icon = " ", color = "blue" } },
  ["<leader>,"] = { "切换缓冲区", icon = { icon = "󰈔", color = "cyan" } },
  ["<leader>-"] = "水平分割",
  ["<leader>."] = { "切换草稿", icon = { icon = "󰈔", color = "cyan" } },
  ["<leader>/"] = "全文检索 (根目录)",
  ["<leader>:"] = "命令历史",
  ["<leader><space>"] = { "查找文件 (根目录)", icon = { icon = " ", color = "green" } },
  ["<leader><tab><tab>"] = { "新建标签页", icon = { icon = "󰓩 ", color = "purple" } },
  ["<leader><tab>["] = { "上一个标签页", icon = { icon = "󰓩 ", color = "purple" } },
  ["<leader><tab>]"] = { "下一个标签页", icon = { icon = "󰓩 ", color = "purple" } },
  ["<leader><tab>d"] = { "关闭标签页", icon = { icon = "󰓩 ", color = "purple" } },
  ["<leader><tab>f"] = { "首个标签页", icon = { icon = "󰓩 ", color = "purple" } },
  ["<leader><tab>l"] = { "末尾标签页", icon = { icon = "󰓩 ", color = "purple" } },
  ["<leader><tab>o"] = { "关闭其他标签页", icon = { icon = "󰓩 ", color = "purple" } },
  ["<leader>?"] = "显示键位",
  ["<leader>D"] = { "DBUI", icon = { icon = "󰙵 ", color = "cyan" } },
  ["<leader>E"] = "文件浏览器 (当前目录)",
  ["<leader>GG"] = { "GitHub CLI", icon = { cat = "filetype", name = "git" } },
  ["<leader>Gc"] = "提交记录",
  ["<leader>Gi"] = "议题",
  ["<leader>Gl"] = "Litee 视图",
  ["<leader>Gp"] = "拉取请求",
  ["<leader>Gr"] = "评审",
  ["<leader>Gt"] = "讨论",
  ["<leader>K"] = "关键字程序",
  ["<leader>L"] = { "LazyVim 更新日志", icon = { cat = "filetype", name = "lazy" } },
  ["<leader>S"] = { "草稿缓冲区", icon = { icon = "󰈔", color = "cyan" } },
  ["<leader>U"] = { "LazyVim 更新", icon = { cat = "filetype", name = "lazy" } },
  ["<leader>`"] = { "切换缓冲区", icon = { icon = "󰈔", color = "cyan" } },
  ["<leader>bD"] = { "删除缓冲区及窗口", icon = { icon = "󰈔", color = "cyan" } },
  ["<leader>bP"] = { "删除非固定缓冲区", icon = { icon = "󰈔", color = "cyan" } },
  ["<leader>bb"] = { "切换缓冲区", icon = { icon = "󰈔", color = "cyan" } },
  ["<leader>bd"] = { "删除缓冲区", icon = { icon = "󰈔", color = "cyan" } },
  ["<leader>bl"] = { "删除左侧缓冲区", icon = { icon = "󰈔", color = "cyan" } },
  ["<leader>bo"] = { "删除其他缓冲区", icon = { icon = "󰈔", color = "cyan" } },
  ["<leader>bp"] = { "切换固定", icon = { icon = " ", color = "yellow" } },
  ["<leader>br"] = { "删除右侧缓冲区", icon = { icon = "󰈔", color = "cyan" } },
  ["<leader>cF"] = { "格式化注入语言", icon = { icon = " ", color = "cyan" } },
  ["<leader>cS"] = { "LSP 引用/定义 (Trouble)", icon = { icon = " ", color = "orange" } },
  ["<leader>cU"] = { "修复诊断", icon = { icon = "󱖫 ", color = "green" } },
  ["<leader>ca"] = { "代码操作", icon = { icon = " ", color = "orange" } },
  ["<leader>cd"] = { "行诊断", icon = { icon = "󱖫 ", color = "green" } },
  ["<leader>ce"] = { "快速修复", icon = { icon = "󰙵 ", color = "cyan" } },
  ["<leader>cf"] = { "格式化", icon = { icon = " ", color = "cyan" } },
  ["<leader>cn"] = { "Mason", icon = { icon = " ", color = "orange" } },
  ["<leader>co"] = { "组织导入", icon = { icon = " ", color = "orange" } },
  ["<leader>cr"] = { "重命名", icon = { icon = " ", color = "orange" } },
  ["<leader>cs"] = { "符号列表 (Trouble)", icon = { icon = " ", color = "orange" } },
  ["<leader>cu"] = { "取消诊断", icon = { icon = "󱖫 ", color = "green" } },
  ["<leader>da"] = { "调试开始/附加", icon = { icon = "󰃤 ", color = "red" } },
  ["<leader>db"] = { "断点", icon = { icon = "󰃤 ", color = "red" } },
  ["<leader>dc"] = { "继续", icon = { icon = "󰃤 ", color = "red" } },
  ["<leader>dd"] = { "进入", icon = { icon = "󰃤 ", color = "red" } },
  ["<leader>di"] = { "检查", icon = { icon = "󰃤 ", color = "red" } },
  ["<leader>do"] = { "跳出", icon = { icon = "󰃤 ", color = "red" } },
  ["<leader>dp"] = { "性能分析", icon = { icon = "⚡", color = "orange" } },
  ["<leader>dq"] = { "退出调试", icon = { icon = "󰃤 ", color = "red" } },
  ["<leader>dr"] = { "运行", icon = { icon = "󰃤 ", color = "red" } },
  ["<leader>ds"] = { "停止调试", icon = { icon = "󰃤 ", color = "red" } },
  ["<leader>dt"] = { "切换断点", icon = { icon = " ", color = "yellow" } },
  ["<leader>dw"] = { "监视", icon = { icon = "󰃤 ", color = "red" } },
  ["<leader>e"] = "文件浏览器 (根目录)",
  ["<leader>fB"] = { "查找所有缓冲区", icon = { icon = "󰈔", color = "cyan" } },
  ["<leader>fE"] = { "文件浏览器 (当前目录)", icon = { icon = " ", color = "green" } },
  ["<leader>fF"] = { "查找文件 (当前目录)", icon = { icon = " ", color = "green" } },
  ["<leader>fR"] = { "最近文件 (当前目录)", icon = { icon = " ", color = "green" } },
  ["<leader>fT"] = { "终端 (当前目录)", icon = { icon = " ", color = "red" } },
  ["<leader>fb"] = { "查找缓冲区", icon = { icon = "󰈔", color = "cyan" } },
  ["<leader>fc"] = { "查找配置文件", icon = { icon = " ", color = "green" } },
  ["<leader>fe"] = { "文件浏览器 (根目录)", icon = { icon = " ", color = "green" } },
  ["<leader>ff"] = { "查找文件 (根目录)", icon = { icon = " ", color = "green" } },
  ["<leader>fg"] = { "查找 Git 文件", icon = { cat = "filetype", name = "git" } },
  ["<leader>fn"] = { "新建文件", icon = { icon = "󰈔", color = "cyan" } },
  ["<leader>fo"] = { "大纲", icon = { icon = " ", color = "green" } },
  ["<leader>fp"] = { "项目", icon = { icon = " ", color = "green" } },
  ["<leader>fr"] = { "最近文件", icon = { icon = "󰈔", color = "cyan" } },
  ["<leader>ft"] = { "终端 (根目录)", icon = { icon = " ", color = "red" } },
  ["<leader>fy"] = { "文件类型", icon = { icon = "󰈔", color = "cyan" } },
  ["<leader>gB"] = { "浏览器打开", icon = { cat = "filetype", name = "git" } },
  ["<leader>gC"] = { "提交列表", icon = { cat = "filetype", name = "git" } },
  ["<leader>gD"] = { "差异 (Origin)", icon = { cat = "filetype", name = "git" } },
  ["<leader>gG"] = { "GitUI (当前目录)", icon = { cat = "filetype", name = "git" } },
  ["<leader>gI"] = { "GitHub Issues (全部)", icon = { cat = "filetype", name = "git" } },
  ["<leader>gL"] = { "Git 日志 (当前目录)", icon = { cat = "filetype", name = "git" } },
  ["<leader>gP"] = { "GitHub PR (全部)", icon = { cat = "filetype", name = "git" } },
  ["<leader>gS"] = { "Git 暂存", icon = { cat = "filetype", name = "git" } },
  ["<leader>gY"] = { "复制链接", icon = { cat = "filetype", name = "git" } },
  ["<leader>gb"] = { "Git 逐行 blame", icon = { cat = "filetype", name = "git" } },
  ["<leader>gcc"] = { "提交 (详细)", icon = { cat = "filetype", name = "git" } },
  ["<leader>gd"] = { "差异 (Hunks)", icon = { cat = "filetype", name = "git" } },
  ["<leader>gg"] = { "GitUI (根目录)", icon = { cat = "filetype", name = "git" } },
  ["<leader>gi"] = { "GitHub Issues (已打开)", icon = { cat = "filetype", name = "git" } },
  ["<leader>gp"] = { "GitHub PR (已打开)", icon = { cat = "filetype", name = "git" } },
  ["<leader>gs"] = { "Git 状态", icon = { cat = "filetype", name = "git" } },
  ["<leader>l"] = { "Lazy 插件", icon = { cat = "filetype", name = "lazy" } },
  ["<leader>n"] = { "通知历史", icon = { icon = "󰵅 ", color = "blue" } },
  ["<leader>qS"] = { "选择会话", icon = { icon = " ", color = "azure" } },
  ["<leader>qd"] = { "不保存会话", icon = { icon = " ", color = "azure" } },
  ["<leader>ql"] = { "恢复上次会话", icon = { icon = " ", color = "azure" } },
  ["<leader>qq"] = { "全部退出", icon = { icon = "󰈆 ", color = "red" } },
  ["<leader>qs"] = { "恢复会话", icon = { icon = " ", color = "azure" } },
  ["<leader>s\""] = { "寄存器", icon = { icon = " ", color = "green" } },
  ["<leader>s/"] = { "搜索历史", icon = { icon = " ", color = "green" } },
  ["<leader>sB"] = { "Grep 打开的缓冲区", icon = { icon = "󰈔", color = "cyan" } },
  ["<leader>sC"] = { "命令", icon = { icon = " ", color = "green" } },
  ["<leader>sD"] = { "缓冲区诊断", icon = { icon = "󰈔", color = "cyan" } },
  ["<leader>sG"] = { "检索 (当前目录)", icon = { icon = " ", color = "green" } },
  ["<leader>sH"] = { "高亮组", icon = { icon = " ", color = "green" } },
  ["<leader>sM"] = { "Man 手册", icon = { icon = " ", color = "green" } },
  ["<leader>sR"] = { "恢复搜索", icon = { icon = " ", color = "green" } },
  ["<leader>sT"] = { "TODO/FIX/FIXME", icon = { icon = " ", color = "green" } },
  ["<leader>sW"] = { "搜索选中/单词 (当前目录)", icon = { icon = " ", color = "green" } },
  ["<leader>sa"] = { "自动命令", icon = { icon = " ", color = "green" } },
  ["<leader>sb"] = { "缓冲区行", icon = { icon = "󰈔", color = "cyan" } },
  ["<leader>sc"] = { "命令历史", icon = { icon = " ", color = "green" } },
  ["<leader>sd"] = { "诊断", icon = { icon = "󱖫 ", color = "green" } },
  ["<leader>sg"] = { "检索 (根目录)", icon = { icon = " ", color = "green" } },
  ["<leader>sh"] = { "帮助", icon = { icon = " ", color = "green" } },
  ["<leader>si"] = { "图标", icon = { icon = " ", color = "green" } },
  ["<leader>sj"] = { "跳转列表", icon = { icon = " ", color = "green" } },
  ["<leader>sk"] = { "键位映射", icon = { icon = " ", color = "green" } },
  ["<leader>sl"] = { "位置列表", icon = { icon = " ", color = "green" } },
  ["<leader>sm"] = { "标记", icon = { icon = " ", color = "green" } },
  ["<leader>sna"] = { "全部消息", icon = { icon = " ", color = "green" } },
  ["<leader>snd"] = { "关闭所有消息", icon = { icon = " ", color = "green" } },
  ["<leader>snh"] = { "消息历史", icon = { icon = " ", color = "green" } },
  ["<leader>snl"] = { "最近消息", icon = { icon = " ", color = "green" } },
  ["<leader>snt"] = { "消息选择器", icon = { icon = " ", color = "green" } },
  ["<leader>sp"] = { "搜索插件规范", icon = { icon = " ", color = "green" } },
  ["<leader>sq"] = { "快速修复列表", icon = { icon = "󰙵 ", color = "cyan" } },
  ["<leader>sr"] = { "查找并替换", icon = { icon = " ", color = "green" } },
  ["<leader>st"] = { "TODO", icon = { icon = " ", color = "green" } },
  ["<leader>su"] = { "撤销树", icon = { icon = " ", color = "green" } },
  ["<leader>sw"] = { "搜索选中/单词 (根目录)", icon = { icon = " ", color = "green" } },
  ["<leader>t"] = { "内置终端", icon = { icon = " ", color = "red" } },
  ["<leader>uA"] = { "标签栏", icon = { icon = "󰓩 ", color = "purple" } },
  ["<leader>uC"] = { "菜单汉化切换", icon = { icon = " ", color = "yellow" } },
  ["<leader>uD"] = { "界面暗化", icon = { icon = "󰙵 ", color = "cyan" } },
  ["<leader>uF"] = { "当前文件格式化", icon = { icon = "󰈔", color = "cyan" } },
  ["<leader>uG"] = { "Git 标记", icon = { cat = "filetype", name = "git" } },
  ["<leader>uI"] = { "检查语法树", icon = { icon = "󰙵 ", color = "cyan" } },
  ["<leader>uL"] = { "相对行号", icon = { icon = "󰙵 ", color = "cyan" } },
  ["<leader>uS"] = { "平滑滚动", icon = { icon = "󰙵 ", color = "cyan" } },
  ["<leader>uT"] = { "Treesitter 高亮", icon = { icon = "󰙵 ", color = "cyan" } },
  ["<leader>uZ"] = { "缩放模式", icon = { icon = "󰙵 ", color = "cyan" } },
  ["<leader>ua"] = { "切换动画", icon = { icon = " ", color = "yellow" } },
  ["<leader>ub"] = { "透明背景", icon = { icon = "󰙵 ", color = "cyan" } },
  ["<leader>uc"] = { "隐藏级别", icon = { icon = "󰙵 ", color = "cyan" } },
  ["<leader>ud"] = { "诊断显示", icon = { icon = "󱖫 ", color = "green" } },
  ["<leader>uf"] = { "全局格式化", icon = { icon = " ", color = "cyan" } },
  ["<leader>ug"] = { "缩进参考线", icon = { icon = "󰙵 ", color = "cyan" } },
  ["<leader>uh"] = { "内联提示", icon = { icon = "󰙵 ", color = "cyan" } },
  ["<leader>ui"] = { "检查位置", icon = { icon = "󰙵 ", color = "cyan" } },
  ["<leader>ul"] = { "行号", icon = { icon = "󰙵 ", color = "cyan" } },
  ["<leader>um"] = { "Markdown 渲染", icon = { icon = "󰙵 ", color = "cyan" } },
  ["<leader>un"] = { "清除通知", icon = { icon = "󰵅 ", color = "blue" } },
  ["<leader>up"] = { "自动配对", icon = { icon = "󰙵 ", color = "cyan" } },
  ["<leader>ur"] = { "刷新界面", icon = { icon = "󰙵 ", color = "cyan" } },
  ["<leader>us"] = { "拼写检查", icon = { icon = "󰙵 ", color = "cyan" } },
  ["<leader>uw"] = { "自动换行", icon = { icon = "󰙵 ", color = "cyan" } },
  ["<leader>uz"] = { "禅模式", icon = { icon = "󰙵 ", color = "cyan" } },
  ["<leader>wd"] = { "关闭窗口", icon = { icon = " ", color = "blue" } },
  ["<leader>wm"] = { "最大化", icon = { icon = " ", color = "blue" } },
  ["<leader>xL"] = { "位置列表 (Trouble)", icon = { icon = "󱖫 ", color = "green" } },
  ["<leader>xQ"] = { "快速修复 (Trouble)", icon = { icon = "󰙵 ", color = "cyan" } },
  ["<leader>xT"] = { "TODO/FIX/FIXME (Trouble)", icon = { icon = "󱖫 ", color = "green" } },
  ["<leader>xX"] = { "缓冲区诊断 (Trouble)", icon = { icon = "󰈔", color = "cyan" } },
  ["<leader>xl"] = { "位置列表", icon = { icon = "󱖫 ", color = "green" } },
  ["<leader>xq"] = { "快速修复列表", icon = { icon = "󰙵 ", color = "cyan" } },
  ["<leader>xt"] = { "TODO (Trouble)", icon = { icon = "󱖫 ", color = "green" } },
  ["<leader>xx"] = { "诊断 (Trouble)", icon = { icon = "󱖫 ", color = "green" } },
  ["<leader>|"] = "垂直分割",
  ["="] = "自动缩进",
  [">"] = "增加缩进",
  ["?"] = { "向后搜索", icon = { icon = " ", color = "green" } },
  ["A"] = "行尾插入",
  ["B"] = "上一个 WORD",
  ["E"] = "下一个 WORD 末尾",
  ["F"] = "移动到前一个字符",
  ["G"] = "最后一行",
  ["H"] = { "窗口首行 (顶部)", icon = { icon = " ", color = "blue" } },
  ["I"] = "行首插入",
  ["J"] = "合并行",
  ["L"] = { "窗口末行 (底部)", icon = { icon = " ", color = "blue" } },
  ["M"] = { "窗口中间行", icon = { icon = " ", color = "blue" } },
  ["N"] = { "上一个搜索结果", icon = { icon = " ", color = "green" } },
  ["O"] = "上方新建行",
  ["P"] = "粘贴到前面",
  ["S"] = "删除行并插入",
  ["T"] = "移动到前一个字符前",
  ["U"] = "撤销整行",
  ["V"] = "可视行模式",
  ["W"] = "下一个 WORD",
  ["X"] = "向前删除",
  ["Y"] = "复制至行尾",
  ["[%"] = "上一个未匹配组",
  ["[("] = "上一个 (",
  ["[<"] = "上一个 <",
  ["[M"] = "上一个方法末尾",
  ["[m"] = "上一个方法开始",
  ["[s"] = "上一个拼写错误",
  ["[{"] = "上一个 {",
  ["]<"] = "下一个 <",
  ["]M"] = "下一个方法末尾",
  ["]["] = "下一个 (",
  ["]m"] = "下一个方法开始",
  ["]s"] = "下一个拼写错误",
  ["]{"] = "下一个 {",
  ["^"] = "行首 (非空白)",
  ["`"] = "标记位置",
  ["a\""] = "\" 字符串",
  ["a'"] = "' 字符串",
  ["a("] = "[(]) 块",
  ["a)"] = "[(]) 块",
  ["a<"] = "<> 块",
  ["a>"] = "<> 块",
  ["aB"] = "[{}] 块",
  ["aW"] = "带空格的 WORD",
  ["a["] = "[] 块",
  ["a]"] = "[] 块",
  ["a`"] = "` 字符串",
  ["ab"] = "[(]) 块",
  ["ap"] = "段落",
  ["as"] = "句子",
  ["at"] = "标签块",
  ["aw"] = "带空格的单词",
  ["a{"] = "[{}] 块",
  ["a}"] = "[{}] 块",
  ["b"] = "上一个单词",
  ["c"] = "修改",
  ["d"] = "删除",
  ["e"] = "下一个单词末尾",
  ["f"] = "移动到下一个字符",
  ["g%"] = "向后循环遍历结果",
  ["g'"] = "标记",
  ["g,"] = "跳转到较新的位置",
  ["g;"] = "跳转到较旧的位置",
  ["gN"] = { "向后搜索并选中", icon = { icon = " ", color = "green" } },
  ["gT"] = { "上一个标签页", icon = { icon = "󰓩 ", color = "purple" } },
  ["gU"] = "转为大写",
  ["g`"] = "标记位置",
  ["ge"] = "上一个单词末尾",
  ["gf"] = { "跳转到光标下的文件", icon = { icon = "󰈔", color = "cyan" } },
  ["gg"] = "首行",
  ["gi"] = "跳转到上次插入位置",
  ["gn"] = { "向前搜索并选中", icon = { icon = " ", color = "green" } },
  ["gt"] = { "下一个标签页", icon = { icon = "󰓩 ", color = "purple" } },
  ["gu"] = "转为小写",
  ["gv"] = "上次可视选区",
  ["gw"] = { "格式化", icon = { icon = " ", color = "cyan" } },
  ["gx"] = { "用系统应用打开文件", icon = { icon = "󰈔", color = "cyan" } },
  ["g~"] = { "切换大小写", icon = { icon = " ", color = "yellow" } },
  ["h"] = "向左",
  ["i\""] = "内部 \" 字符串",
  ["i'"] = "内部 ' 字符串",
  ["i("] = "内部 [(])",
  ["i)"] = "内部 [(])",
  ["i<"] = "内部 <>",
  ["i>"] = "内部 <>",
  ["iB"] = "内部 [{}]",
  ["iW"] = "内部 WORD",
  ["i["] = "内部 []",
  ["i]"] = "内部 []",
  ["i`"] = "内部 ` 字符串",
  ["ib"] = "内部 [(])",
  ["ip"] = "内部段落",
  ["is"] = "内部句子",
  ["it"] = "内部标签块",
  ["iw"] = "内部单词",
  ["i{"] = "内部 [{}]",
  ["i}"] = "内部 [{}]",
  ["j"] = "向下",
  ["k"] = "向上",
  ["l"] = "向右",
  ["n"] = { "下一个搜索结果", icon = { icon = " ", color = "green" } },
  ["o"] = "下方新建行",
  ["p"] = "粘贴",
  ["r"] = "替换",
  ["s"] = "删除并插入",
  ["t"] = "移动到下一个字符前",
  ["u"] = "撤销",
  ["v"] = "可视模式",
  ["w"] = "下一个单词",
  ["x"] = "删除字符",
  ["y"] = "复制",
  ["z<CR>"] = "当前行置顶",
  ["z="] = "拼写建议",
  ["zA"] = { "切换所有折叠", icon = { icon = " ", color = "yellow" } },
  ["zC"] = "关闭所有折叠",
  ["zD"] = "删除所有折叠",
  ["zE"] = { "删除所有折叠", icon = { icon = "󰈔", color = "cyan" } },
  ["zH"] = "向左半屏",
  ["zL"] = "向右半屏",
  ["zM"] = "关闭所有折叠",
  ["zO"] = "打开所有折叠",
  ["zR"] = "打开所有折叠",
  ["za"] = { "切换折叠", icon = { icon = " ", color = "yellow" } },
  ["zb"] = "当前行置底",
  ["zc"] = "关闭折叠",
  ["zd"] = "删除折叠",
  ["ze"] = "当前行居右",
  ["zf"] = "创建折叠",
  ["zg"] = "添加拼写单词",
  ["zi"] = { "切换折叠", icon = { icon = " ", color = "yellow" } },
  ["zm"] = "更多折叠",
  ["zo"] = "打开折叠",
  ["zr"] = "更少折叠",
  ["zs"] = "当前行居左",
  ["zt"] = "当前行置顶",
  ["zv"] = "显示光标行",
  ["zw"] = "标记拼写错误",
  ["zx"] = "更新折叠",
  ["zz"] = "当前行居中",
  ["{"] = "上一个空行",
  ["}"] = "下一个空行",
  ["~"] = { "切换大小写", icon = { icon = " ", color = "yellow" } },
}

-- ===== 模式 n：分组名 =====
M.cn_g = {
  ["%"] = "匹配 (){}[]",
  ["<c-w>"] = { "窗口", icon = { icon = " ", color = "blue" } },
  ["<leader><tab>"] = { "标签页", icon = { icon = "󰓩 ", color = "purple" } },
  ["<leader>b"] = { "缓冲区", icon = { icon = "󰈔", color = "cyan" } },
  ["<leader>c"] = { "代码", icon = { icon = " ", color = "orange" } },
  ["<leader>d"] = { "调试", icon = { icon = "󰃤 ", color = "red" } },
  ["<leader>f"] = { "文件", icon = { icon = " ", color = "green" } },
  ["<leader>g"] = { "Git", icon = { cat = "filetype", name = "git" } },
  ["<leader>gc"] = { "提交", icon = { cat = "filetype", name = "git" } },
  ["<leader>q"] = { "会话", icon = { icon = " ", color = "azure" } },
  ["<leader>s"] = { "搜索", icon = { icon = " ", color = "green" } },
  ["<leader>sn"] = { "消息", icon = { icon = " ", color = "green" } },
  ["<leader>u"] = { "界面", icon = { icon = "󰙵 ", color = "cyan" } },
  ["<leader>w"] = { "窗口", icon = { icon = " ", color = "blue" } },
  ["<leader>x"] = { "诊断", icon = { icon = "󱖫 ", color = "green" } },
  ["a"] = "附加模式",
  ["i"] = "插入模式",
}

-- ===== 模式 v：具体快捷键 =====
M.cn_v = {
  ["!"] = "运行程序",
  ["\""] = "寄存器",
  ["$"] = "行尾",
  ["%"] = "匹配 (){}[]",
  [","] = "上一个 f/t/F/T",
  ["/"] = { "向前搜索", icon = { icon = " ", color = "green" } },
  ["0"] = "行首",
  [";"] = "下一个 f/t/F/T",
  ["<"] = "减少缩进",
  ["<c-w>+"] = { "增加高度", icon = { icon = " ", color = "blue" } },
  ["<c-w>-"] = { "减少高度", icon = { icon = " ", color = "blue" } },
  ["<c-w><"] = { "减少宽度", icon = { icon = " ", color = "blue" } },
  ["<c-w>="] = { "等高等宽", icon = { icon = " ", color = "blue" } },
  ["<c-w>>"] = { "增加宽度", icon = { icon = " ", color = "blue" } },
  ["<c-w>T"] = { "拆分到新标签页", icon = { icon = "󰓩 ", color = "purple" } },
  ["<c-w>_"] = { "最大高度", icon = { icon = " ", color = "blue" } },
  ["<c-w>h"] = { "移至左侧窗口", icon = { icon = " ", color = "blue" } },
  ["<c-w>j"] = { "移至下方窗口", icon = { icon = " ", color = "blue" } },
  ["<c-w>k"] = { "移至上方窗口", icon = { icon = " ", color = "blue" } },
  ["<c-w>l"] = { "移至右侧窗口", icon = { icon = " ", color = "blue" } },
  ["<c-w>o"] = { "关闭其他窗口", icon = { icon = " ", color = "blue" } },
  ["<c-w>q"] = { "关闭窗口", icon = { icon = " ", color = "blue" } },
  ["<c-w>s"] = { "水平分割", icon = { icon = " ", color = "blue" } },
  ["<c-w>v"] = { "垂直分割", icon = { icon = " ", color = "blue" } },
  ["<c-w>w"] = { "切换窗口", icon = { icon = " ", color = "blue" } },
  ["<c-w>x"] = { "与下一个交换", icon = { icon = " ", color = "blue" } },
  ["<c-w>|"] = { "最大宽度", icon = { icon = " ", color = "blue" } },
  ["<leader>sW"] = { "搜索选中 (当前目录)", icon = { icon = " ", color = "green" } },
  ["<leader>sr"] = { "替换选中", icon = { icon = " ", color = "green" } },
  ["<leader>sw"] = { "搜索选中 (根目录)", icon = { icon = " ", color = "green" } },
  ["="] = "自动缩进",
  [">"] = "增加缩进",
  ["?"] = { "向后搜索", icon = { icon = " ", color = "green" } },
  ["B"] = "上一个 WORD",
  ["E"] = "下一个 WORD 末尾",
  ["F"] = "移动到前一个字符",
  ["G"] = "最后一行",
  ["J"] = "合并行",
  ["T"] = "移动到前一个字符前",
  ["V"] = "可视行模式",
  ["W"] = "下一个 WORD",
  ["^"] = "行首 (非空白)",
  ["a\""] = "\" 字符串",
  ["a'"] = "' 字符串",
  ["a("] = "[(]) 块",
  ["a)"] = "[(]) 块",
  ["a<"] = "<> 块",
  ["a>"] = "<> 块",
  ["aB"] = "[{}] 块",
  ["aW"] = "带空格的 WORD",
  ["a["] = "[] 块",
  ["a]"] = "[] 块",
  ["a`"] = "` 字符串",
  ["ab"] = "[(]) 块",
  ["ap"] = "段落",
  ["as"] = "句子",
  ["at"] = "标签块",
  ["aw"] = "带空格的单词",
  ["a{"] = "[{}] 块",
  ["a}"] = "[{}] 块",
  ["b"] = "上一个单词",
  ["c"] = "修改",
  ["d"] = "删除",
  ["e"] = "下一个单词末尾",
  ["f"] = "移动到下一个字符",
  ["gC"] = "块注释",
  ["gU"] = "转为大写",
  ["gc"] = "注释选中",
  ["ge"] = "上一个单词末尾",
  ["gg"] = "首行",
  ["gq"] = { "格式化", icon = { icon = " ", color = "cyan" } },
  ["gu"] = "转为小写",
  ["gw"] = { "格式化", icon = { icon = " ", color = "cyan" } },
  ["g~"] = { "切换大小写", icon = { icon = " ", color = "yellow" } },
  ["h"] = "向左",
  ["i\""] = "内部 \" 字符串",
  ["i'"] = "内部 ' 字符串",
  ["i("] = "内部 [(])",
  ["i)"] = "内部 [(])",
  ["i<"] = "内部 <>",
  ["i>"] = "内部 <>",
  ["iB"] = "内部 [{}]",
  ["iW"] = "内部 WORD",
  ["i["] = "内部 []",
  ["i]"] = "内部 []",
  ["i`"] = "内部 ` 字符串",
  ["ib"] = "内部 [(])",
  ["ip"] = "内部段落",
  ["is"] = "内部句子",
  ["it"] = "内部标签块",
  ["iw"] = "内部单词",
  ["i{"] = "内部 [{}]",
  ["i}"] = "内部 [{}]",
  ["j"] = "向下",
  ["k"] = "向上",
  ["l"] = "向右",
  ["p"] = "替换选中",
  ["r"] = "替换字符",
  ["s"] = "删除并插入",
  ["t"] = "移动到下一个字符前",
  ["v"] = "可视模式",
  ["w"] = "下一个单词",
  ["y"] = "复制",
  ["zf"] = "创建折叠",
  ["{"] = "上一个空行",
  ["}"] = "下一个空行",
  ["~"] = { "切换大小写", icon = { icon = " ", color = "yellow" } },
}

-- ===== 模式 v：分组名 =====
M.cn_v_g = {
  ["<c-w>"] = { "窗口", icon = { icon = " ", color = "blue" } },
  ["<leader>s"] = { "搜索选中", icon = { icon = " ", color = "green" } },
  ["a"] = "环绕",
  ["i"] = "内部",
}

-- ===== 模式 o：具体快捷键 =====
M.cn_o = {
  ["$"] = "行尾",
  ["%"] = "匹配 (){}[]",
  [","] = "上一个 f/t/F/T",
  ["/"] = { "向前搜索", icon = { icon = " ", color = "green" } },
  ["0"] = "行首",
  [";"] = "下一个 f/t/F/T",
  ["?"] = { "向后搜索", icon = { icon = " ", color = "green" } },
  ["B"] = "上一个 WORD",
  ["E"] = "下一个 WORD 末尾",
  ["F"] = "移动到前一个字符",
  ["G"] = "最后一行",
  ["T"] = "移动到前一个字符前",
  ["W"] = "下一个 WORD",
  ["^"] = "行首 (非空白)",
  ["a\""] = "\" 字符串",
  ["a'"] = "' 字符串",
  ["a("] = "[(]) 块",
  ["a)"] = "[(]) 块",
  ["a<"] = "<> 块",
  ["a>"] = "<> 块",
  ["aB"] = "[{}] 块",
  ["aW"] = "带空格的 WORD",
  ["a["] = "[] 块",
  ["a]"] = "[] 块",
  ["a`"] = "` 字符串",
  ["ab"] = "[(]) 块",
  ["ap"] = "段落",
  ["as"] = "句子",
  ["at"] = "标签块",
  ["aw"] = "带空格的单词",
  ["a{"] = "[{}] 块",
  ["a}"] = "[{}] 块",
  ["b"] = "上一个单词",
  ["e"] = "下一个单词末尾",
  ["f"] = "移动到下一个字符",
  ["ge"] = "上一个单词末尾",
  ["gg"] = "首行",
  ["h"] = "向左",
  ["i\""] = "内部 \" 字符串",
  ["i'"] = "内部 ' 字符串",
  ["i("] = "内部 [(])",
  ["i)"] = "内部 [(])",
  ["i<"] = "内部 <>",
  ["i>"] = "内部 <>",
  ["iB"] = "内部 [{}]",
  ["iW"] = "内部 WORD",
  ["i["] = "内部 []",
  ["i]"] = "内部 []",
  ["i`"] = "内部 ` 字符串",
  ["ib"] = "内部 [(])",
  ["ip"] = "内部段落",
  ["is"] = "内部句子",
  ["it"] = "内部标签块",
  ["iw"] = "内部单词",
  ["i{"] = "内部 [{}]",
  ["i}"] = "内部 [{}]",
  ["j"] = "向下",
  ["k"] = "向上",
  ["l"] = "向右",
  ["t"] = "移动到下一个字符前",
  ["w"] = "下一个单词",
  ["{"] = "上一个空行",
  ["}"] = "下一个空行",
}

-- ===== 模式 o：分组名 =====
M.cn_o_g = {
  ["a"] = "环绕",
  ["i"] = "内部",
}

-- ===== 模式 i：具体快捷键 =====
M.cn_i = {
  ["\""] = "寄存器",
  ["<c-o>"] = "执行一次普通模式命令",
  ["<c-r>"] = "粘贴寄存器内容",
}

-- ===== 模式 i：分组名 =====
M.cn_i_g = {
}

-- ===== 模式 c：具体快捷键 =====
M.cn_c = {
  ["\""] = "寄存器",
  ["<c-r>"] = "粘贴寄存器内容",
}

-- ===== 模式 c：分组名 =====
M.cn_c_g = {
}

-- ============ 以下是把中文压进 which-key（不用改） ============
local static_icon = {} -- 表里自带的静态图标
local runtime_icon = {} -- 运行时从 which-key 取到的真实图标（只存取到的）
local final_icon = {} -- 最终结果，确定后不再变
local exists = {} -- 该键在你菜单里真实存在吗（不存在就不加，免得菜单多出假项）
local committed = false

-- 把 <Leader> / <C-W> 这类写法统一，方便对上 which-key 树里的节点
local function norm(lhs)
  local s = lhs:gsub("<[^<>]+>", function(x)
    return "<" .. x:sub(2, -2):lower() .. ">"
  end)
  return (s:gsub("<leader>", "<Space>"))
end

local TABLES = {
  { M.cn, "n", false },
  { M.cn_g, "n", true },
  { M.cn_v, "v", false },
  { M.cn_v_g, "v", true },
  { M.cn_v, "x", false },
  { M.cn_v_g, "x", true },
  { M.cn_o, "o", false },
  { M.cn_o_g, "o", true },
  { M.cn_i, "i", false },
  { M.cn_i_g, "i", true },
  { M.cn_c, "c", false },
  { M.cn_c_g, "c", true },
}

-- 收集表里自带的静态图标
for _, job in ipairs(TABLES) do
  for lhs, val in pairs(job[1]) do
    if type(val) == "table" and val.icon then
      static_icon[job[2] .. "|" .. norm(lhs)] = val.icon
    end
  end
end

local function get_mode(mode)
  local ok, Buf = pcall(require, "which-key.buf")
  if not ok then
    return nil
  end
  local okm, m = pcall(Buf.get, { mode = mode, buf = 0 })
  if okm and m and m.tree then
    return m
  end
  return nil
end

-- 在“还没改文字”的时候，把 which-key 自己算出来的图标取走；顺便记下哪些键真的存在
local function capture()
  local ok, Util = pcall(require, "which-key.util")
  local ok2, View = pcall(require, "which-key.view")
  if not (ok and ok2) then
    return 0, 0
  end
  local got, found = 0, 0
  for _, job in ipairs(TABLES) do
    local mode = job[2]
    local m = get_mode(mode)
    if m then
      for lhs in pairs(job[1]) do
        local id = mode .. "|" .. norm(lhs)
        if not exists[id] then
          local okf, node = pcall(m.tree.find, m.tree, Util.keys(lhs, { norm = true }))
          if okf and node then
            exists[id] = true
            found = found + 1
            if runtime_icon[id] == nil and final_icon[id] == nil then
              local oki, ic, hl = pcall(View.icon, node)
              if oki and ic then
                runtime_icon[id] = { icon = ic, hl = hl }
              end
            end
          end
        else
          found = found + 1
        end
        if runtime_icon[id] ~= nil then
          got = got + 1
        end
      end
    end
  end
  return got, found
end

local function commit()
  if committed then
    return
  end
  for _, job in ipairs(TABLES) do
    for lhs in pairs(job[1]) do
      local id = job[2] .. "|" .. norm(lhs)
      if final_icon[id] == nil then
        final_icon[id] = runtime_icon[id] or static_icon[id] or false
      end
    end
  end
  committed = true
end

local function apply()
  if not pcall(require, "which-key") then
    return false
  end
  local got, found = capture()
  if found == 0 and not committed then
    return false -- which-key 还没就绪，稍后重试
  end
  commit()
  for _, job in ipairs(TABLES) do
    local tbl, mode, is_group = job[1], job[2], job[3]
    local regs = {}
    for lhs, val in pairs(tbl) do
      local id = mode .. "|" .. norm(lhs)
      if exists[id] then -- 只改菜单里真实存在的键，避免多出假项
        local text = type(val) == "table" and val[1] or val
        local e = { lhs, mode = mode }
        if is_group then
          e.group = text
        else
          e.desc = text
        end
        local ic = final_icon[id]
        if ic then
          e.icon = ic
        end
        regs[#regs + 1] = e
      end
    end
    if #regs > 0 then
      require("which-key").add(regs)
    end
  end
  return true
end

-- 没就绪就重试（最多 40 次 × 100ms），保证能等到 which-key 内部准备完成
local function apply_when_ready(tries)
  local ok, ret = pcall(apply)
  if (not ok or not ret) and tries < 40 then
    vim.defer_fn(function()
      apply_when_ready(tries + 1)
    end, 100)
  end
end

local function hook()
  if type(LazyVim) == "table" and LazyVim.on_load then
    LazyVim.on_load("which-key.nvim", function()
      vim.schedule(function()
        apply_when_ready(0)
      end)
    end)
  else
    vim.api.nvim_create_autocmd("User", {
      pattern = "LazyLoad",
      callback = function(ev)
        if ev.data == "which-key.nvim" then
          vim.schedule(function()
            apply_when_ready(0)
          end)
        end
      end,
    })
  end
  -- 双保险：VeryLazy 之后再压一次（别的插件后加的英文描述会被盖掉）
  vim.api.nvim_create_autocmd("User", {
    pattern = "VeryLazy",
    callback = function()
      vim.schedule(function()
        apply_when_ready(0)
      end)
    end,
  })
end

return {
  "folke/which-key.nvim",
  init = hook,
}
