/// Contains the settings for the Fluid package.
///
/// Edit the [breakpoints] parameter to set custom global breakpoints.
class FluidoSettings {
  static FluidoBreakpoints breakpoints = const FluidoBreakpoints();
}

/// Contains the maximum values, in logical pixels, for the breakpoints.
///
/// If no value is specified for a breakpoint, the default value is used.
class FluidoBreakpoints {
  final int sm;
  final int md;
  final int lg;
  final int xl;
  final int xl2;

  const FluidoBreakpoints({
    this.sm = 640,
    this.md = 768,
    this.lg = 1024,
    this.xl = 1280,
    this.xl2 = 1536,
  });
}
