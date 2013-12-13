
[1mFrom:[0m /var/lib/stickshift/52a74e244382ec0612000071/app-root/data/707240/app/controllers/vacations_controller.rb @ line 59 VacationsController#create:

    [1;34m52[0m: [32mdef[0m [1;34mcreate[0m
    [1;34m53[0m:   @vacation = [1;34;4mVacation[0m.new(params[[33m:vacation[0m])
    [1;34m54[0m:   @vacation.define_status
    [1;34m55[0m:   @vacation.user=current_user
    [1;34m56[0m:   respond_to [32mdo[0m |format|
    [1;34m57[0m:     [32mif[0m @vacation.save
    [1;34m58[0m:       current_user.updatetotaldays
 => [1;34m59[0m:       binding.pry
    [1;34m60[0m:       [1;34;4mNotifier[0m.push_email(@vacation).deliver
    [1;34m61[0m:       format.html { redirect_to @vacation, [35mnotice[0m: [31m[1;31m'[0m[31mVacation was successfully created.[1;31m'[0m[31m[0m }
    [1;34m62[0m:       format.json { render [35mjson[0m: @vacation, [35mstatus[0m: [33m:created[0m, [35mlocation[0m: @vacation }
    [1;34m63[0m:     [32melse[0m
    [1;34m64[0m:       format.html { render [35maction[0m: [31m[1;31m"[0m[31mnew[1;31m"[0m[31m[0m }
    [1;34m65[0m:       format.json { render [35mjson[0m: @vacation.errors, [35mstatus[0m: [33m:unprocessable_entity[0m }
    [1;34m66[0m:     [32mend[0m
    [1;34m67[0m:   [32mend[0m
    [1;34m68[0m: [32mend[0m

