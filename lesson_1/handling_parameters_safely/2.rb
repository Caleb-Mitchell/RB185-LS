# before
def add_expenses(amount, memo)
  date = Date.today
  sql = ("INSERT INTO expenses (amount, memo, created_on) " \
    "VALUES (#{amount}, '#{memo}', '#{date}');")
  CONNECTION.exec(sql)
end

# after
def add_expenses(amount, memo)
  date = Date.today
  sql = ("INSERT INTO expenses (amount, memo, created_on) " \
    "VALUES ($1, $2, $3);")
  CONNECTION.exec_params(sql, [amount, memo, date])
end
