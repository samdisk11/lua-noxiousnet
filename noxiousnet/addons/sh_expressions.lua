-- Leave this
expressions = {}

----- CONFIG -------

-- If only admins can use it.
expressions.AdminOnly = false

-- If this is anything but empty then restrict using expressions to that user group.
expressions.UserGroup = ""

-- Don't allow people to change expressions faster than this. 0 for always allow.
expressions.TimeOut = 1

----- END CONFIG ---




if SERVER then
	AddCSLuaFile("sh_expressions.lua")
	AddCSLuaFile("cl_expressions.lua")

	include("sv_expressions.lua")
end

if CLIENT then
	include("cl_expressions.lua")
end

expressions.Expressions = {}

function expressions:AddExpression(name, data, scale)
	local tab = {}
	tab.Name = name
	tab.Flex = data
	tab.Scale = scale
	expressions.Expressions[name] = tab

	return tab
end

expressions.FlexNames = {
	"left_lid_raiser",
	"right_lid_tightener",
	"left_lid_tightener",
	"right_lid_droop",
	"left_lid_droop",
	"right_lid_closer",
	"left_lid_closer",
	"half_closed",
	"blink",
	"right_inner_raiser",
	"left_inner_raiser",
	"right_outer_raiser",
	"left_outer_raiser",
	"right_lowerer",
	"left_lowerer",
	"right_cheek_raiser",
	"left_cheek_raiser",
	"wrinkler",
	"dilator",
	"right_upper_raiser",
	"left_upper_raiser",
	"right_corner_puller",
	"left_corner_puller",
	"right_corner_depressor",
	"left_corner_depressor",
	"chin_raiser",
	"right_part",
	"left_part",
	"right_puckerer",
	"left_puckerer",
	"right_funneler",
	"left_funneler",
	"right_stretcher",
	"left_stretcher",
	"bite",
	"presser",
	"tightener",
	"jaw_clencher",
	"jaw_drop",
	"right_mouth_drop",
	"left_mouth_drop",
	"smile",
	"lower_lip",
	"head_rightleft",
	"head_updown",
	"head_tilt",
	"eyes_updown",
	"eyes_rightleft",
	"body_rightleft",
	"chest_rightleft",
	"head_forwardback",
	"gesture_updown",
	"gesture_rightleft"
}

expressions:AddExpression("unusually happy",
{
	1.128,
	0.432,
	1.602,
	1.807,
	0.262,
	1.495,
	0.319,
	1.601,
	1.257,
	1.621,
	0.959,
	0.82,
	1.44,
	0.945,
	0.168,
	1.717,
	0.586,
	0.725,
	0.131,
	0.954,
	1.981,
	1.783,
	1.721,
	0.261,
	0.009,
	1.706,
	0.142,
	0.585,
	0.661,
	0.17,
	1.036,
	1.29,
	0.836,
	0.529,
	1.09,
	1.687,
	1.83,
	0.417,
	0.193,
	1.372,
	0.042,
	0.051,
	0.496,
	1.812,
	0.499
}, 1.5)

expressions:AddExpression("da fuck?",
{
	0.578,
	0.794,
	1.765,
	1.495,
	1.811,
	1.075,
	1.812,
	1.383,
	1.915,
	0.002,
	1.973,
	1.436,
	0.716,
	0.265,
	1.425,
	0.582,
	0.518,
	1.019,
	0.234,
	1.851,
	0.661,
	0.573,
	0.529,
	1.094,
	0.43,
	1.241,
	1.307,
	0.035,
	0.811,
	0.614,
	0.362,
	1.148,
	0.663,
	0.345,
	0.213,
	1.426,
	0.935,
	0.234,
	0.289,
	0.409,
	1.263,
	1.106,
	1.027,
	0.035,
	0.519
}, 1.5)

expressions:AddExpression("worried",
{
	0.089,
	0.686,
	1.463,
	1.431,
	1.146,
	0.101,
	0.831,
	0.007,
	0.439,
	1.447,
	1.292,
	0.055,
	0.304,
	0.099,
	0.173,
	0.793,
	0.585,
	0.685,
	0.245,
	0.912,
	0.473,
	0.03,
	0.652,
	0.858,
	0.511,
	0.244,
	0.456,
	1.353,
	0.536,
	0.091,
	0.914,
	1.068,
	0.865,
	1.232,
	1.302,
	1.124,
	0.742,
	0.095,
	0.995,
	0.249,
	1.119,
	0.739,
	1.036,
	0.561,
	0.748
}, 1.5)

expressions:AddExpression("angry",
{
	1.483,
	0.499,
	1.103,
	1.138,
	0.495,
	1.235,
	0.082,
	1.068,
	0.922,
	1.339,
	1.06,
	0.67,
	1,
	1.232,
	1.364,
	0.168,
	0.053,
	0.528,
	1.471,
	1.321,
	1.099,
	0.912,
	1.303,
	0.926,
	1.156,
	0.486,
	1.349,
	0.095,
	1.203,
	0.784,
	0.772,
	0.941,
	0.537,
	0.435,
	1.344,
	0.236,
	1.045,
	0.148,
	0.557,
	1.149,
	0.428,
	0.747,
	1.317,
	1.344,
	1.08
}, 1.5)

expressions:AddExpression("constipated",
{
	0.64,
	0.124,
	1.789,
	0.792,
	0.424,
	0.775,
	0.793,
	0.655,
	1.653,
	1.747,
	0.428,
	0.963,
	0.969,
	1.972,
	1.582,
	0.368,
	1.743,
	0.017,
	1.962,
	0.822,
	0.313,
	0.497,
	0.768,
	0.671,
	0.86,
	1.159,
	1.019,
	1.225,
	1.652,
	0.221,
	0.287,
	1.14,
	0.092,
	1.753,
	0.193,
	1.741,
	0.794,
	1.688,
	0.301,
	0.099,
	0.958,
	0.646,
	1.553,
	0.364,
	0.353
}, 1.5)

expressions:AddExpression("sour",
{
	1.953,
	1.751,
	1.091,
	0.453,
	1.374,
	1.625,
	1.733,
	1.366,
	1.893,
	1.844,
	1.322,
	1.464,
	1.585,
	0.393,
	0.616,
	0.432,
	0.255,
	1.088,
	1.621,
	0.476,
	0.85,
	1.982,
	1.065,
	0.372,
	0.305,
	0.933,
	0.959,
	1.96,
	0.602,
	1.659,
	0.864,
	1.279,
	1.234,
	0.377,
	0.336,
	1.785,
	0.499,
	0.99,
	0.324,
	0.255,
	1.725,
	1.934,
	1.903,
	0.74,
	0.532
}, 1)

expressions:AddExpression("sly",
{
	1.822,
	1.388,
	0.302,
	0.395,
	0.202,
	0.059,
	0.134,
	0.5,
	0.045,
	1.098,
	0.872,
	0.628,
	0.64,
	0.149,
	0.436,
	0.603,
	0.709,
	0.597,
	0.702,
	1.643,
	0.199,
	1.725,
	1.274,
	0.01,
	0.069,
	0.029,
	0.729,
	0.541,
	0.77,
	0.503,
	0.772,
	0.515,
	0.304,
	1.216,
	0.211,
	0.993,
	0.504,
	0,
	0.159,
	0.066,
	0.472,
	0.005,
	1.486,
	0.893,
	0.053
}, 1.5)

expressions:AddExpression("oh really",
{
	0.003,
	0,
	0.323,
	0.034,
	0.315,
	0.965,
	0.057,
	1.422,
	1.359,
	1.796,
	1.129,
	0.02,
	0.117,
	0.015,
	1.718,
	0.016,
	0.069,
	0.018,
	0.003,
	0.863,
	0.204,
	0.23,
	0.626,
	0.153,
	0.076,
	0.107,
	0.857,
	0.049,
	0.052,
	0.002,
	0.281,
	0.504,
	0.301,
	1.384,
	0.001,
	0.072,
	0.001,
	0.016,
	0,
	0.004,
	0.366,
	0.027,
	1.595,
	0.003,
	0.988
}, 1.5)
