module GenieDeploy

function run(command::Cmd)
  try Base.run(command)

  catch ex
    if isa(ex, Base.IOError)
      @error "Can not find $(command.exec[1]). Please make sure that $(command.exec[1]) is installed and accessible."
    end

    rethrow(ex)
  end
end

end
