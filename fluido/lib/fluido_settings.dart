/// Global class containing the settings for the Fluido package.
///
/// Edit the [breakpoints] parameter to set custom global values for breakpoints.

class FluidoSettings {
  static FluidoBreakpoints breakpoints = FluidoBreakpoints();
}

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
