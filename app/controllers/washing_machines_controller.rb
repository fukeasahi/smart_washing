class WashingMachinesController < ApplicationController
    def index
        top_floor         = WashingMachine.maximum(:floor)
        @washing_machines = WashingMachine.all.group_by {|washing_machine| washing_machine.floor % top_floor}.values.reverse!
    end
end
