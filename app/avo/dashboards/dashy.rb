class Dashy < Avo::Dashboards::BaseDashboard
  self.id = "dashy"
  self.name = "Dashboard"
  self.description = "Aqui estão todos os dados atualizados"
   self.grid_cols = 3
  # self.visible = -> do
  #   true
  # end

  # cards go here
  # card UsersCount
end
