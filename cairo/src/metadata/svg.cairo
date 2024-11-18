use crate::metadata::json::Data;
use crate::metadata::base64::bytes_base64_encode;

pub fn generate(data: @Data) -> ByteArray {
    let s = format!(
        "<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 300 300\">
  <defs>
    <linearGradient id=\"screenGradient\" x1=\"0%\" y1=\"0%\" x2=\"100%\" y2=\"100%\">
      <stop offset=\"0%\" style=\"stop-color:cyan;stop-opacity:1\" />
      <stop offset=\"100%\" style=\"stop-color:#06f;stop-opacity:1\" />
    </linearGradient>
    <filter id=\"glow\">
      <feGaussianBlur stdDeviation=\"2.5\" result=\"coloredBlur\"/>
      <feMerge>
        <feMergeNode in=\"coloredBlur\"/>
        <feMergeNode in=\"SourceGraphic\"/>
      </feMerge>
    </filter>
    <filter id=\"noise\" x=\"0\" y=\"0\" width=\"100%\" height=\"100%\">
        <feTurbulence type=\"fractalNoise\" baseFrequency=\"0.01\" seed=\"12345\" />
        <feColorMatrix type=\"hueRotate\" values=\"0\">
            <animate attributeName=\"values\" from=\"0\" to=\"360\" dur=\"5s\" repeatCount=\"indefinite\" />
        </feColorMatrix>
        <feColorMatrix type=\"matrix\" values=\"0 0 0 1 0  0 0 0 1 0  0 0 0 1 0  1 0 0 0 0\" result=\"opacity-mask\" />
        <feFlood flood-color=\"cyan\" />
        <feComposite operator=\"in\" in2=\"opacity-mask\" />
        <feComposite operator=\"over\" in2=\"SourceGraphic\" />
    </filter>
  </defs>
  <rect x=\"0\" y=\"0\" width=\"300\" height=\"300\" fill=\"red\" filter=\"url(#noise)\" opacity=\".8\"/>
  <g filter=\"url(#glow)\">
    <animateTransform attributeName=\"transform\" type=\"translate\" values=\"25,20; 25,30; 25,20\" dur=\"4s\" repeatCount=\"indefinite\"/>
    <rect x=\"0\" y=\"0\" width=\"250\" height=\"250\" rx=\"20\" ry=\"20\" fill=\"#112\" />
  </g>
  <g>
    <animateTransform attributeName=\"transform\" type=\"translate\" values=\"25,20; 25,30; 25,20\" dur=\"4s\" repeatCount=\"indefinite\" />
    <rect x=\"20\" y=\"20\" width=\"210\" height=\"210\" rx=\"10\" ry=\"10\" fill=\"url(#screenGradient)\" opacity=\"0.7\" >
      <animate attributeName=\"opacity\" values=\"0.7;0.9;0.7\" dur=\"2s\" repeatCount=\"indefinite\" />
    </rect>
  </g>
  <g>
    <animateTransform attributeName=\"transform\" type=\"translate\" values=\"75,90; 75,100; 75,90\" dur=\"4s\" repeatCount=\"indefinite\" />
    <text font-family=\"monospace\" font-size=\"12\" fill=\"#0ff\" opacity=\"0.8\">
      <tspan x=\"0\" dy=\"0\" font-weight=\"bold\" font-size=\"16\">
        <animate attributeName=\"opacity\" values=\"0;1\" dur=\"1s\" begin=\"0s\" />
        zkgm, caironaut!
      </tspan>
      <tspan x=\"0\" dy=\"45\">
        <animate attributeName=\"opacity\" values=\"0;1\" dur=\"1s\" begin=\"0.5s\" />
          You found {} factors
      </tspan>
      <tspan x=\"1\" dy=\"19\">
        <animate attributeName=\"opacity\" values=\"0;1\" dur=\"1s\" begin=\"1s\" />
        you're solver #{}
      </tspan>
      <tspan x=\"0\" dy=\"50\">
        <animate attributeName=\"opacity\" values=\"0;1\" dur=\"1s\" begin=\"1.5s\" />
        Rewarding {}
      </tspan>
    </text>
  </g>
</svg>",
        data.num_factors,
        data.solver_number,
        data.reward_ticker
    );
    bytes_base64_encode(s)
}
