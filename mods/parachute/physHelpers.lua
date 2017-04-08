--[[
	Derivation
	----------
	F_resulting	= F_gravity + F_airresistance
				= m * g + 1/2 * cw * rho * A * v^2
	
	F = m * a
	a = F / m
	
	=> a(v)		= (m * g + 1/2 * cw *rho * A * v^2) / m
]]

function a(v)
	local m = 80			-- Weight of player, kg
	local g = -9.81			-- Earth Acceleration, m/s^2
	local cw = 1.33			-- Drag coefficient
	local rho = 1.2			-- Density of air (on ground, not accurate), kg/m^3
	local A = 25			-- Surface of the parachute, m^2
	return ((m * g + 1/2 * cw * rho * A * v * v) / m)
end