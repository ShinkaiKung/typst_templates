#import "@preview/cetz:0.3.2"
#import "@preview/cetz-plot:0.1.0": *

#cetz.canvas({
  import cetz.draw: *
  let utilityFunc = (U, x) => U / x
  let indifferenceCurve = U => x => utilityFunc(U, x)
  let tangentLine = (U, x0) => x => {
    let y0 = utilityFunc(U, x0)
    let k = -U / (x0 * x0)
    k * (x - x0) + y0
  }
  let pa = (2, utilityFunc(10, 2))
  let pb = (2.8, utilityFunc(10, 2.8))
  let pc = (4, utilityFunc(20, 4))
  let pd = (6, utilityFunc(30, 6))

  plot.plot(
    size: (10, 10),
    axis-style: "left",
    x-min: 0,
    x-max: 10,
    y-min: 0,
    y-max: 10,
    x-tick-step: 2,
    y-tick-step: 2,
    x-grid: true,
    y-grid: true,
    name: "plot",
    {
      plot.add(
        domain: (1, 10),
        indifferenceCurve(10),
        style: (stroke: blue, "stroke-width": 2),
      )
      plot.add(
        domain: (1, 10),
        indifferenceCurve(20),
        style: (stroke: red, "stroke-width": 2),
      )
      plot.add(
        domain: (1, 10),
        indifferenceCurve(30),
        style: (stroke: green, "stroke-width": 2),
      )

      plot.add(
        domain: (0, 10),
        tangentLine(10, pa.first()),
        style: (stroke: black, "stroke-width": 2),
      )
      plot.add(
        domain: (0, 10),
        tangentLine(10, pb.first()),
        style: (stroke: black, "stroke-width": 2),
      )
      plot.add(
        domain: (0, 10),
        tangentLine(20, pc.first()),
        style: (stroke: black, "stroke-width": 2),
      )
      plot.add(
        domain: (0, 10),
        tangentLine(30, pd.first()),
        style: (stroke: black, "stroke-width": 2),
      )
      plot.add-anchor("a", pa)
      plot.add-anchor("ax-north", (pa.first(), 0.1))
      plot.add-anchor("ay-east", (0.1, pa.last()))
      plot.add-anchor("b", pb)
      plot.add-anchor("bx-north", (pb.first(), 0.1))
      plot.add-anchor("by-west", (-0.1, pb.last()))
      plot.add-anchor("by-east", (0.1, pb.last()))
      plot.add-anchor("c", pc)
      plot.add-anchor("cx-north", (pc.first(), 0.1))
      plot.add-anchor("cy-west", (-0.1, pc.last()))
      plot.add-anchor("cy-east", (0.1, pc.last()))
      plot.add((pa, (pa.first(), 0)), mark: "o", style: (stroke: black))
      plot.add((pa, (0, pa.last())), mark: "o", style: (stroke: black))
      plot.add((pb, (pb.first(), 0)), mark: "o", style: (stroke: black))
      plot.add((pb, (0, pb.last())), mark: "o", style: (stroke: black))
      plot.add((pc, (pc.first(), 0)), mark: "o", style: (stroke: black))
      plot.add((pc, (0, pc.last())), mark: "o", style: (stroke: black))
    },
  )

  content("plot.a", text("A"), anchor: "south-west", padding: .2)
  content("plot.b", text("B"), anchor: "west", padding: .2)
  content("plot.c", text("C"), anchor: "west", padding: .2)

  line("plot.ax-north", "plot.bx-north", mark: (end: "straight"), style: (stroke: red), name: "sub-x", stroke: blue)
  line("plot.ay-east", "plot.by-east", mark: (end: "straight"), style: (stroke: red), name: "sub-y", stroke: blue)

  line("plot.bx-north", "plot.cx-north", mark: (end: "straight"), style: (stroke: red), name: "inc-x", stroke: red)
  line("plot.by-west", "plot.cy-west", mark: (end: "straight"), style: (stroke: red), name: "inc-y", stroke: red)

  content("sub-x", text("sub"), anchor: "north", padding: .1)
  content("sub-y", text("sub"), anchor: "west", padding: .1)

  content("inc-x", text("inc"), anchor: "north", padding: .1)
  content("inc-y", text("inc"), anchor: "east", padding: .1)
})

#cetz.canvas({
  import cetz.draw: *
  let STC = Q => calc.pow(Q, 3) - 15 * calc.pow(Q, 2) + 100 * Q + 500
  let ATC = Q => calc.pow(Q, 2) - 15 * Q + 100 + 500 / Q
  let AVC = Q => calc.pow(Q, 2) - 15 * Q + 100
  let AFC = Q => 500 / Q
  let MC = Q => 3 * calc.pow(Q, 2) - 30 * Q + 100

  plot.plot(
    size: (10, 6),
    axis-style: "left",
    x-min: 0,
    x-max: 50,
    y-min: 0,
    y-max: 1000,
    x-tick-step: 10,
    y-tick-step: 100,
    x-grid: true,
    y-grid: true,
    name: "plot",
    {
      plot.add(
        domain: (0, 50),
        samples: 500,
        STC,
        style: (stroke: red, "stroke-width": 2),
        label: "STC",
      )
      plot.add(
        domain: (0.1, 50),
        samples: 100,
        ATC,
        style: (stroke: blue, "stroke-width": 2),
        label: "ATC",
      )
      plot.add(
        domain: (0.1, 50),
        samples: 100,
        AVC,
        style: (stroke: purple, "stroke-width": 2),
        label: "AVC",
      )
      plot.add(
        domain: (0.1, 50),
        samples: 100,
        AFC,
        style: (stroke: gray, "stroke-width": 2),
        label: "AFC",
      )
      plot.add(
        domain: (0.1, 50),
        samples: 100,
        MC,
        style: (stroke: green, "stroke-width": 2),
        label: "MC",
      )

      plot.add-anchor("STC-label", (5, STC(5)))
      plot.add-anchor("ATC-label", (5, ATC(5)))
      plot.add-anchor("AVC-label", (20, AVC(20)))
      plot.add-anchor("AFC-label", (20, AFC(20)))
      plot.add-anchor("MC-label", (20, MC(20)))
    },
  )

  content("plot.STC-label", text("STC"), anchor: "south", padding: .1)
  circle("plot.STC-label", radius: .05)

  content("plot.ATC-label", text("ATC"), anchor: "south-west", padding: .1)
  circle("plot.ATC-label", radius: .05)

  content("plot.AVC-label", text("AVC"), anchor: "west", padding: .1)
  circle("plot.AVC-label", radius: .05)

  content("plot.AFC-label", text("AFC"), anchor: "south", padding: .1)
  circle("plot.AFC-label", radius: .05)

  content("plot.MC-label", text("MC"), anchor: "north", padding: .1)
  circle("plot.MC-label", radius: .05)
})


#cetz.canvas({
  import cetz.draw: *
  let f0 = x => calc.exp(-calc.pow(x, 1) / 2)
  let f1 = x => calc.exp(-calc.pow(x, 2) / 2)
  let f2 = x => calc.exp(-calc.pow(x, 3) / 2)
  plot.plot(
    size: (10, 5),
    axis-style: "school-book",
    x-min: -4,
    x-max: 4,
    y-min: 0,
    y-max: 3,
    x-tick-step: 2,
    y-tick-step: 1,
    name: "plot",
    {
      plot.add(
        domain: (-4, 4),
        samples: 100,
        f0,
        style: (stroke: green, "stroke-width": 2),
        label: [$y = e^(-x slash 2)$],
      )
      plot.add(
        domain: (-4, 4),
        samples: 100,
        f1,
        style: (stroke: red, "stroke-width": 2),
        label: [$y = e^(-x^2 slash 2)$],
      )
      plot.add(
        domain: (-4, 4),
        samples: 100,
        f2,
        style: (stroke: blue, "stroke-width": 2),
        label: [$y = e^(-x^3 slash 2)$],
      )
    },
  )
})


