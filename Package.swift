// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "libfvad_swift",
    products: [
        .library(
            name: "libfvad_swift",
            targets: ["libfvad_swift"])
    ],
    targets: [
        .target(
            name: "libfvad_swift",
            path: ".",
            sources: [
                "Sources/libfvad/common.h",
                "Sources/libfvad/fvad.c",
                "Sources/libfvad/vad/vad_core.c",
                "Sources/libfvad/vad/vad_core.h",
                "Sources/libfvad/vad/vad_filterbank.c",
                "Sources/libfvad/vad/vad_filterbank.h",
                "Sources/libfvad/vad/vad_gmm.c",
                "Sources/libfvad/vad/vad_gmm.h",
                "Sources/libfvad/vad/vad_sp.c",
                "Sources/libfvad/vad/vad_sp.h",
                "Sources/libfvad/signal_processing/division_operations.c",
                "Sources/libfvad/signal_processing/energy.c",
                "Sources/libfvad/signal_processing/get_scaling_square.c",
                "Sources/libfvad/signal_processing/resample_48khz.c",
                "Sources/libfvad/signal_processing/resample_by_2_internal.c",
                "Sources/libfvad/signal_processing/resample_by_2_internal.h",
                "Sources/libfvad/signal_processing/resample_fractional.c",
                "Sources/libfvad/signal_processing/signal_processing_library.h",
                "Sources/libfvad/signal_processing/spl_inl.c",
                "Sources/libfvad/signal_processing/spl_inl.h"
            ],
            publicHeadersPath: "Sources/libfvad/include"
        ),
    ]
)