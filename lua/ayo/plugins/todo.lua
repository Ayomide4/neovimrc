local setup, todo-comment = pcall(require, "todo-comments")
if not setup then
  return
end

todo-comment.setup()
