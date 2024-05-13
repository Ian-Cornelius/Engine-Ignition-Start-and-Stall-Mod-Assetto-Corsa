if car.isAIControlled then
  return nil
end

local counter = 0
local flag = 0
local pressTimer = 0
-- Clutch bites at 50%. So, no stall if below 50%. Adjust this to the specific vehicle's bite point if you have the data. Works well as is.
local clutchBitePoint = 0.5 
-- Car stalls if RPM falls below 950 and clutch above bitepoint. Adjust this to the specific vehicle if you have the data. Works well as is
local stallRPM = 950


function script.update(dt)
  local data = ac.accessCarPhysics()

  -- reset

  if not car.extraD then
    pressTimer = 0
  end

  -- messages

  if not car.extraD and not car.extraE and flag == 0 and (ac.getCar().gas > 0) then
    ac.setMessage('Car is turned OFF', 'Select Neutral gear, turn ON the Ignition (extraE) and hold the Starter (extraD) to start the car')
  end

  if car.extraD and not car.extraE and flag == 0 then
    ac.setMessage('Ignition is OFF', 'Press the (extraE) to turn it ON')
  end

  if car.extraD and flag == 0 and (ac.getCar().gear > 0 or ac.getCar().gear < 0) then
    ac.setMessage('Engine is OFF', 'To start the engine, neutral gear is required')
  end

  -- engine ON section

  if car.extraD then
    pressTimer = pressTimer + dt
    if pressTimer >= 1.0 and flag == 0 and (ac.getCar().gear == 0) then
      if pressTimer < 6 then
        flag = 1 -- engine is now on.
      end
    end

  -- engine OFF section

    if pressTimer < 0.8 and flag == 1 then
      flag = 0 -- Hit the engine start again to switch if off. Faster, thus under 0.8
      pressTimer = 7 
    end
  end

  -- engine OFF if rpm drop down

  -- 0.5 is your bite point? So, in gear and rpm below 950 and clutch above bitepoint, stall.
  if (ac.getCar().gear > 0 or ac.getCar().gear < 0) and data.rpm < stallRPM and ac.getCar().clutch > clutchBitePoint then
      data.rpm = 0
      counter = 0 -- reset start counter
      flag = 0
  end

  
  -- I guess you maintain the stall here
  if flag == 0 then
    data.rpm = 0
    counter = 0
  elseif not car.extraE then
    data.rpm = 0
    counter = 0
    flag = 0
  elseif counter < 1.5 then
    if counter < 0.5 then
      data.rpm = 0
    else
      data.gas = 0.1 --At this point, you're on. Meaning counter above 0.5. This built by passing frames to create that switching on effect. Okay. Then, when on, provide gas input to rev it up and switch on
    end
    counter = counter + dt
  end
end
