screen = canvas = window.canvas

using = (object, block) -> block.call object

add = (parent, child) ->
	unless child?
		child = parent
		parent = canvas
	parent.addChild child, false
	child

image = (src) ->
	attrs = if _.isObject src then src else { image: src }
	canvas.display.image _.extend {
	}, attrs

ellipse = (x, y, radius_x, radius_y) ->
	canvas.display.ellipse {
		x, y, radius_x, radius_y,
		fill: "lightgray"
	}

rectangle = (x, y, width, height) ->
	attrs = if _.isObject x then x else { x, y, width, height }
	canvas.display.rectangle _.extend {
		fill: "lightgray"
	}, attrs

text = (x, y, label) ->
	attrs = if _.isObject x then x else { x, y, text: label }
	canvas.display.text _.extend {
		fill: "#333333"
	}, attrs

line = (x, y, x2, y2) ->
	canvas.display.line {
		start: { x: x, y: y },
		end: { x: x2, y: y2 },
		stroke: "1px black",
		cap: "round"
	}

polygon = (x, y, sides, radius, rotation = 0) ->
	canvas.display.polygon {
		x, y, sides, radius, rotation
		fill: "lightgray"
	}

font = (size = 16, family = "helvetica") ->
	"#{size}pt #{family}"

stroke = (thickness = 1, color = "black") ->
	"#{thickness}px #{color}"

gradient = (from, to, degrees = 270) ->
	"linear-gradient(#{degrees}deg, #{from}, #{to})"

rgba = (r, g, b, a = 1) ->
	"rgba(#{r},#{g},#{b},#{a})"

grayscale = (f) ->
	r = Math.round(f * 255)
	"rgb(#{r}, #{r}, #{r})"

transparent = "transparent"
aliceblue = "aliceblue"
antiquewhite = "antiquewhite"
aqua = "aqua"
aquamarine = "aquamarine"
azure = "azure"
beige = "beige"
bisque = "bisque"
black = "black"
blanchedalmond = "blanchedalmond"
blue = "blue"
blueviolet = "blueviolet"
brown = "brown"
burlywood = "burlywood"
cadetblue = "cadetblue"
chartreuse = "chartreuse"
chocolate = "chocolate"
coral = "coral"
cornflowerblue = "cornflowerblue"
cornsilk = "cornsilk"
crimson = "crimson"
cyan = "cyan"
darkblue = "darkblue"
darkcyan = "darkcyan"
darkgoldenrod = "darkgoldenrod"
darkgreen = "darkgreen"
darkgrey = "darkgrey"
darkkhaki = "darkkhaki"
darkmagenta = "darkmagenta"
darkolivegreen = "darkolivegreen"
darkorange = "darkorange"
darkorchid = "darkorchid"
darkred = "darkred"
darksalmon = "darksalmon"
darkseagreen = "darkseagreen"
darkslateblue = "darkslateblue"
darkslategrey = "darkslategrey"
darkturquoise = "darkturquoise"
darkviolet = "darkviolet"
deeppink = "deeppink"
deepskyblue = "deepskyblue"
dimgrey = "dimgrey"
dodgerblue = "dodgerblue"
firebrick = "firebrick"
floralwhite = "floralwhite"
forestgreen = "forestgreen"
fuchsia = "fuchsia"
gainsboro = "gainsboro"
ghostwhite = "ghostwhite"
gold = "gold"
goldenrod = "goldenrod"
green = "green"
greenyellow = "greenyellow"
grey = "grey"
honeydew = "honeydew"
hotpink = "hotpink"
indianred = "indianred"
indigo = "indigo"
ivory = "ivory"
khaki = "khaki"
lavender = "lavender"
lavenderblush = "lavenderblush"
lawngreen = "lawngreen"
lemonchiffon = "lemonchiffon"
lightblue = "lightblue"
lightcoral = "lightcoral"
lightcyan = "lightcyan"
lightgoldenrodyellow = "lightgoldenrodyellow"
lightgray = "lightgray"
lightgreen = "lightgreen"
lightpink = "lightpink"
lightsalmon = "lightsalmon"
lightseagreen = "lightseagreen"
lightskyblue = "lightskyblue"
lightslategrey = "lightslategrey"
lightsteelblue = "lightsteelblue"
lightyellow = "lightyellow"
lime = "lime"
limegreen = "limegreen"
linen = "linen"
magenta = "magenta"
maroon = "maroon"
mediumaquamarine = "mediumaquamarine"
mediumblue = "mediumblue"
mediumorchid = "mediumorchid"
mediumpurple = "mediumpurple"
mediumseagreen = "mediumseagreen"
mediumslateblue = "mediumslateblue"
mediumspringgreen = "mediumspringgreen"
mediumturquoise = "mediumturquoise"
mediumvioletred = "mediumvioletred"
midnightblue = "midnightblue"
mintcream = "mintcream"
mistyrose = "mistyrose"
moccasin = "moccasin"
navajowhite = "navajowhite"
navy = "navy"
oldlace = "oldlace"
olive = "olive"
olivedrab = "olivedrab"
orange = "orange"
orangered = "orangered"
orchid = "orchid"
palegoldenrod = "palegoldenrod"
palegreen = "palegreen"
paleturquoise = "paleturquoise"
palevioletred = "palevioletred"
papayawhip = "papayawhip"
peachpuff = "peachpuff"
peru = "peru"
pink = "pink"
plum = "plum"
powderblue = "powderblue"
purple = "purple"
red = "red"
rosybrown = "rosybrown"
royalblue = "royalblue"
saddlebrown = "saddlebrown"
salmon = "salmon"
sandybrown = "sandybrown"
seagreen = "seagreen"
seashell = "seashell"
sienna = "sienna"
silver = "silver"
skyblue = "skyblue"
slateblue = "slateblue"
slategrey = "slategrey"
snow = "snow"
springgreen = "springgreen"
steelblue = "steelblue"
tan = "tan"
teal = "teal"
thistle = "thistle"
tomato = "tomato"
turquoise = "turquoise"
violet = "violet"
wheat = "wheat"
white = "white"
whitesmoke = "whitesmoke"
yellow = "yellow"
yellowgreen = "yellowgreen"
